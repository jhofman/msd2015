# adapted from http://joshwalters.com/2012/11/27/naive-bayes-classification-in-r.html
library(ElemStatLearn)
library(e1071)
library(ROCR)

ndx <- sample(nrow(spam), floor(nrow(spam) * 0.9))
train <- spam[ndx,]
test <- spam[-ndx,]

xTrain <- train[,-58]
yTrain <- train$spam

xTest <- test[,-58]
yTest <- test$spam

model <- naiveBayes(xTrain, yTrain)

table(predict(model, xTest), yTest)

probs <- predict(model, xTest, type="raw")
probs <- transform(probs, p_spam=ifelse(spam > email, spam, 1-spam))

pred <- prediction(probs$p_spam, yTest)
perf <- performance(pred, measure='acc', x.measure='fpr')
plot(perf)
performance(pred, 'auc')

