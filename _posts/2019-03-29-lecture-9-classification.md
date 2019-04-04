---
layout: post
title:  "Lecture 9: Classification"
date:   2019-03-29 10:00:00
categories: lectures
---

In this lecture we covered classification with linear models, specifically naive Bayes and logistics regression.

<center>
<script async class="speakerdeck-embed" data-id="46903fe715de4ab59c254c6a61ea866d" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>
</center>

We started this lecture by introducing the problem of classification and how it differs from regression: the outcome is categorical (e.g., whether an email is spam or [ham](https://wiki.apache.org/spamassassin/Ham)) rather than continuous.
We first reviewed [Bayes' rule](http://en.wikipedia.org/wiki/Bayes'_rule) for inverting conditional probabilities via a simple, but [somewhat counterintuitive](http://bit.ly/ggbbc), [medical diagnosis example](http://www.scientificamerican.com/article/what-is-bayess-theorem-an/) and then adapted this to an (extremely naive) [one-word spam classifier](https://github.com/jhofman/msd2019/blob/master/lectures/lecture_9/enron_naive_bayes.sh).
We improved upon this by considering all words present in a document and arrived at naive Bayes---a simple linear method for classification in which we model each word occurrence independently and use Bayes' rule to calculate the probability the document belongs to each class given the words it contains.

Although naive Bayes makes an obviously incorrect assumption that all features are independent, it turns out to be a reasonably useful method in practice. 
It's simple and scalable to train, easy to update as new data arrive, easy to interpret, and often more competitive in performance than one might expect.
That said, there are some obvious issues with naive Bayes as presented, namely overfitting in the training process and overconfidence / miscalibration when making predictions.

The first issue arises when thinking about how to estimate word probabilities.
Simple maximum likelihood estimates (MLE) for word probabilities lead to overfitting, implying, for instance, that it's impossible to see a word in a given class in the future if we've never seen it occur in that class in the past.
We dealt with this by thinking about maximum a posteriori (MAP) estimation which led to the idea of [Laplace smoothing](https://en.wikipedia.org/wiki/Additive_smoothing), or adding [pseudocounts](http://en.wikipedia.org/wiki/Pseudocount) to empirical word counts to prevent overfitting.
As usual, determining the amount of smoothing to use is an empirical question, often solved by methods such as cross-validation.

As for the second problem of feature independence, we addressed this by abandoning naive Bayes in favor of logistic regression.
Logistic regression makes predictions using the same functional form as naive Bayes---the log-odds are modeled as a weighted combination of feature values---but fits these weights in a manner that accounts for correlations between features.
We (once again) applied the maximum likelihood principle to arrive at criteria for estimating these weights, and discussed gradient descent for a solution. The resulting algorithms are very close in spirit to those for linear regression, but slightly more complex due to the logistic function.
And, similar to linear regression, we discussed the idea of regularizing logistic regression by including a term in the loss function to penalize large weight vectors.

We concluded with a discussion of several metrics for evaluating classifiers, including calibration, [confusion matrices](https://en.wikipedia.org/wiki/Confusion_matrix), accuracy, precision and recall, and the [ROC curve](https://en.wikipedia.org/wiki/Receiver_operating_characteristic). See the [classification notebook](https://github.com/jhofman/msd2019/blob/master/lectures/lecture_9/classification.ipynb) up on Github for more details.

A few references:

* Chapter 12 of [Advanced Data Analysis from an Elementary Point of View](http://www.stat.cmu.edu/~cshalizi/ADAfaEPoV/) 
* Chapter 4 of [An Introduction to Statistical Learning](http://www-bcf.usc.edu/~gareth/ISL/getbook.html)
* [Naive Bayes at 40](http://www.cs.iastate.edu/~honavar/bayes-lewis.pdf) by Lewis (1998)
* [Idiots Bayes---Not So Stupid After All?](http://www.jstor.org/pss/1403452) by Hand and Yu (2001)
* [A Bayesian Approach to Filtering Junk E-mail](http://robotics.stanford.edu/users/sahami/papers-dir/spam.pdf) from Sahami, Dumais, Heckerman, and Horvitz (1998)
* [A Plan for Spam](http://www.paulgraham.com/spam.html) by Paul Graham (2002)
* [An introduction to ROC analysis](https://ccrma.stanford.edu/workshops/mir2009/references/ROCintro.pdf)
* [Understanding ROC curves](http://www.navan.name/roc/)
* [Vowpal Wabbit](https://github.com/VowpalWabbit/vowpal_wabbit/wiki) for scalable classification


