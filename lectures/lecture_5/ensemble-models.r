# taken from http://jee3.web.rice.edu/ensemble-models.r
# accessed 2015-02-20
# small modifications by chris.wiggins@gmail.com for
# 'modeling social data' course, spring 2015

rm(list=ls())
set.seed(973487)

# boosting with adaboost on the titanic data set
load(url('http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/titanic3.sav'))
# get rid of columns with many categorical values
titanic3$name<-NULL
titanic3$ticket<-NULL
titanic3$home.dest<-NULL
titanic3$cabin<-NULL
titanic3$boat<-NULL
titanic3.orig<-titanic3
titanic3<-subset(titanic3, select=c(survived, pclass, sex, age, sibsp))

# histogram of most 'important' variable among these
hist(titanic3[titanic3$survived==0,]$sibs,xlim = c(0,8),breaks = 0:8)
hist(titanic3[titanic3$survived==1,]$sibs,xlim = c(0,8),breaks = 0:8)

require(ada)

# separate into training and test data
# (of equal sizes)
# (runif=uniform distribution)
# (order=ordering permutation)
o<-order(runif(dim(titanic3)[1]))
titanic.train <- titanic3[o[1:655],]
titanic.pred <- titanic3[o[656:1309],]
titanic.orig.train <- titanic3.orig[o[1:655],]
titanic.orig.pred <- titanic3.orig[o[656:1309],]

# run the model on the training data
titanic.ada<-ada(survived ~ pclass + sex + age + sibsp, data=titanic.train, verbose=TRUE,na.action=na.rpart)
# ...and predict the test data
titanic.ada<-addtest(titanic.ada, test.x=titanic.pred[,-1], test.y=titanic.pred[,1])

# run the model on the training data
titanic.orig.ada<-ada(survived ~ ., data=titanic.orig.train, verbose=TRUE,na.action=na.rpart)
# ...and predict the test data
titanic.orig.ada<-addtest(titanic.orig.ada, test.x=titanic.orig.pred[,-2], test.y=titanic.orig.pred[,2])

# error reduction for progressive splits
plot(titanic.ada, test=TRUE)
plot(titanic.orig.ada,test=TRUE)

# variable importance plotting
varplot(titanic.ada)
varplot(titanic.orig.ada)

# out-of-sample predictions on the test data set
titanic.oos.predict<-predict(titanic.ada, newdata=titanic.pred, type="vector")

# out-of-sample survivors+deaths correctly predicted
sum(titanic.oos.predict==titanic.pred$survived)/length(titanic.oos.predict)

# survivors only
s<-which(titanic.pred$survived==1)
sum(titanic.oos.predict[s]==titanic.pred$survived[s])/length(titanic.oos.predict[s])

# deaths only
s<-which(titanic.pred$survived==0)
sum(titanic.oos.predict[s]==titanic.pred$survived[s])/length(titanic.oos.predict[s])





# a close variant (that also incorporates bagging) can also be done using the gbm package
require(gbm)
titanic.gbm<-gbm(survived ~ pclass + sex + age + sibsp, data=titanic.train, distribution="adaboost", n.trees = 10000, verbose=FALSE)
gbm.perf(titanic.gbm,method="OOB")

plot.gbm(titanic.gbm,1)
plot.gbm(titanic.gbm,2)
plot.gbm(titanic.gbm,3)
plot.gbm(titanic.gbm,4)

# out-of-sample predictions on the test data set
titanic.oos.predict<-ifelse(plogis(predict(titanic.gbm, newdata=titanic.pred, type="link", n.trees=10000))>0.5, 1, 0)

# out-of-sample survivors+deaths correctly predicted
sum(titanic.oos.predict==titanic.pred$survived)/length(titanic.oos.predict)

# survivors only
s<-which(titanic.pred$survived==1)
sum(titanic.oos.predict[s]==titanic.pred$survived[s])/length(titanic.oos.predict[s])

# deaths only
s<-which(titanic.pred$survived==0)
sum(titanic.oos.predict[s]==titanic.pred$survived[s])/length(titanic.oos.predict[s])




null<-function(){
# ensemble models: flexible mixture modeling
x<-runif(100)
class<-rbinom(100, size=1, prob=0.5)

y<-class*(2-2*x)+(1-class)*(-2+2*x)+rnorm(100, sd=0.5)
plot(y~x, col=class+2)

require(flexmix)
flex.mod<-flexmix(y~x, k=2)
summary(flex.mod)
parameters(flex.mod)

newdata=data.frame(x=seq(from=0, to=1, by=0.1))
pred.line<-predict(flex.mod, newdata)
pred.class<-ifelse(flex.mod@posterior$scaled[,1]>flex.mod@posterior$scaled[,2], "red", "green")
plot(y~x, col=pred.class)
lines(pred.line[[1]]~newdata$x, col="red", lty=2)
lines(pred.line[[2]]~newdata$x, col="green", lty=2)


# more complex example
x<-runif(1000, min=0, max=10)
y<-ifelse(x<5, sin(pi*0.5*x), 2*x-10)+rnorm(1000, sd=1)
plot(y~x)

flex.mod<-flexmix(y~x, k=4)
summary(flex.mod)
parameters(flex.mod)

newdata=data.frame(x=seq(from=0, to=10, by=0.1))
pred.line<-predict(flex.mod, newdata)
preds<-flex.mod@posterior$scaled

maxpost<-apply(X=preds, FUN=max, MARGIN=1)
for(i in 1:length(maxpost)){
  pred.class[i]<-which(preds[i,]==maxpost[i])
}

color<-c("black", "red", "blue", "green")
pred.class.col<-color[as.numeric(pred.class)]

plot(y~x, col=pred.class.col)

lines(pred.line[[1]]~newdata$x, col="black", lty=2, lwd=2)
lines(pred.line[[2]]~newdata$x, col="red", lty=2, lwd=2)
lines(pred.line[[3]]~newdata$x, col="blue", lty=2, lwd=2)
lines(pred.line[[4]]~newdata$x, col="green", lty=2, lwd=2)




require(BMA)
require(foreign)
#download.file("http://www.stanford.edu/~jfearon/data/apsr03repdata.zip",destfile="repdata.zip")
download.file("http://www.columbia.edu/itc/applied/wiggins/apsr03repdata.zip",destfile="repdata.zip")
unzip("repdata.zip")
fearon<-read.dta(file="repdata.dta")

# borrowed some code from http://projects.iq.harvard.edu/files/gov2001/files/5modeldependencematching.r
vars<-c("onset","nwstate","warl","gdpenl","lpopl1","lmtnest","ncontig","Oil","instab","polity2l","ethfrac","relfrac")
fearon<-fearon[,vars]
fearon$onset[fearon$onset==4]<-1
dat<-na.omit(fearon)

summary(glm(onset~nwstate+warl+gdpenl+lpopl1+lmtnest+ncontig+Oil+instab+polity2l+ethfrac+relfrac+nwstate*Oil, data=dat, family=binomial))
fearon.bma<-bic.glm(onset~nwstate+warl+gdpenl+lpopl1+lmtnest+ncontig+Oil+instab+polity2l+ethfrac+relfrac+nwstate*Oil, data=dat, glm.family="binomial")
summary(fearon.bma)
plot(fearon.bma)

}
