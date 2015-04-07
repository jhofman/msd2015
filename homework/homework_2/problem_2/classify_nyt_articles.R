library(tm)
library(Matrix)
library(glmnet)
library(ROCR)
library(ggplot2)

# read business and world articles into one data frame

# create a Corpus from the article snippets

# create a DocumentTermMatrix from the snippet Corpus
# remove punctuation and numbers

# convert the DocumentTermMatrix to a sparseMatrix, required by cv.glmnet
# X <- sparseMatrix(i=dtm$i, j=dtm$j, x=dtm$v, dims=c(dtm$nrow, dtm$ncol), dimnames=dtm$dimnames)

# create a train / test split

# cross-validate logistic regression with cv.glmnet, measuring auc

# evaluate performance for the best-fit model

# plot ROC curve and output AUC



