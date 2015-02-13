library(dplyr)
library(ggplot2)
library(scales)
library(reshape)

theme_set(theme_bw()) # a theme with a white background

#
# function to compute geometric mean
#
geom.mean <- function(x,dx=0.01) {
  10^mean(log10(x+dx))-dx
}

# read user pageview data
users <- read.table(gzfile('users.tsv.gz'), header=T, sep="\t")

# 50/50 train/test split
set.seed(42)
adults <- filter(users, age >= 20 & age <= 60)
num.train <- floor(nrow(adults)*0.5)
train.ndx <- sample(1:nrow(adults), num.train, replace=F)
adults.train <- adults[train.ndx, ]
adults.test <- adults[-train.ndx, ]
  
fit <- data.frame()
for (k in 1:10) {
  #form <- as.formula(sprintf('log10(daily.views+0.01) ~ gender*poly(age,%d)', k))
  form <- as.formula(sprintf('daily.views ~ gender*poly(age,%d)', k))
  model <- lm(form, data=adults.train)
  #fit.train <- cor(10^predict(model, adults.train)-0.1, adults.train$daily.views)
  #fit.test <- cor(10^predict(model, adults.test)-0.1, adults.test$daily.views)
   fit.train <- cor(predict(model, adults.train), adults.train$daily.views)
   fit.test <- cor(predict(model, adults.test), adults.test$daily.views)
  #fit.train <- norm(predict(model, adults.train)- adults.train$daily.views,type="2")
  #fit.test <- norm(predict(model, adults.test)- adults.test$daily.views,type="2")
  fit <- rbind(fit, data.frame(k=k, train=fit.train, test=fit.test))
}

# plot train/test loss
plot.data <- melt(fit, id="k")
ggplot(data=plot.data, aes(x=k, y=value)) + 
  geom_line(aes(linetype=variable)) +
  xlab('Degree') + ylab('R-squared') +
  theme(legend.title=element_blank(), legend.position=c(0.9,0.8))
ggsave(filename='figures/cross_validation_polyfit_age.pdf', width=8, height=4)

# fit model at best value of k
best.test <- fit %>% filter(test == max(test))
best.test
form <- as.formula(sprintf('daily.views ~ gender*poly(age,%d)', best.test$k))
model <- lm(form, data=adults.train)

# compute mean / median / geometric mean daily pageviews by age / gender
views.by.age.gender <- filter(users, age <= 90) %>%
  group_by(age, gender) %>%
  summarize(mean.daily.views     =mean(     daily.views),
            median.daily.views   =median(   daily.views),
            geom.mean.daily.views=geom.mean(daily.views),
            num.users            =length(   daily.views)
  )

# create synthetic examples for both genders, all ages
# add predicted page views to synthetic examples
model.adults <- expand.grid(age=20:60, gender=factor(c('Male','Female')))
model.adults$daily.views <- predict(model, model.adults)

# plot modeled pageviews vs. actual
plot.data <- merge(model.adults, views.by.age.gender, by=c("age", "gender"))
ggplot(data=plot.data, aes(x=age, y=daily.views, colour=gender)) +
  geom_line(aes(linetype=gender)) +
  geom_point(aes(x=age, y=mean.daily.views, shape=gender)) +
  xlab('Age') + ylab('Daily pageviews') +
  theme(legend.title=element_blank(), legend.position=c(0.9,0.85))
ggsave(filename='figures/mean_daily_pageviews_by_age_and_gender.pdf', width=8, height=4)
