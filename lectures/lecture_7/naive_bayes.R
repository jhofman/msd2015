# adapted from http://joshwalters.com/2012/11/27/naive-bayes-classification-in-r.html
library(ElemStatLearn)
library(e1071)
library(ROCR)

# create train/text indices
ndx <- sample(nrow(spam), floor(nrow(spam) * 0.9))
train <- spam[ndx,]
test <- spam[-ndx,]

# split into train/test data
xTrain <- train[,-58]
yTrain <- train$spam
xTest <- test[,-58]
yTest <- test$spam

# fit naive bayes model with default params
model <- naiveBayes(xTrain, yTrain)

# look at confusion matrix
table(predict(model, xTest), yTest)

# plot ROC curve
probs <- predict(model, xTest, type="raw")
pred <- prediction(probs$spam, yTest)
perf <- performance(pred, measure='tpr', x.measure='fpr')
plot(perf)
performance(pred, 'auc')

