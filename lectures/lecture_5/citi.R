df<-data.frame(read.table(
  file='citi1000.csv',
  header=TRUE,
  sep=',',
  na.strings = '\\N'))

table(data.frame(u=df$usertype,g=df$gender))

df.bg=df[(df$gender==1|df$gender==2),]
df.bg=subset(df.bg, select=c(
  tripduration,
  start.station.latitude,
  start.station.longitude,
  usertype,
  birth.year,
  gender
  ))
library(ada)

rpart(formula = gender~.,data=df.bg)

ada(formula = gender~.,data=df.bg)
ada.g<-ada(formula = gender~.,data=df.bg)
varplot(ada.g)
plot(ada.g,TRUE,TRUE)

rpart(formula = usertype~.,data=df.bg)

ada(formula = usertype~.,data=df.bg)
ada.u<-ada(formula = usertype~.,data=df.bg)
varplot(ada.u)
plot(ada.u,TRUE,TRUE)
