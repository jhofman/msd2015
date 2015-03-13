---
layout: post
title:  "Lecture 7: Classification with Logistic Regression"
date:   2015-03-06 12:00:00
categories: lectures
---

We kicked off class by reviewing naive Bayes from last week's lecture.
Despite its very convenient runtime (linear in the size of the dataset) and space requirements (linear in the product of the number of distinct features and number of classes), there were some obvious issues with naive Bayes as presented, namely overfitting and feature independence.

The first issue arises because simple maximum likelihood estimates (MLE) for word probabilities lead to overfitting---MLE estimates imply that it's impossible to see a word in a given class in the future if we've never seen it occur in that class in the past.
We dealt with this by considering different estimation methods, which led us down the perilous path of [Bayesian inference](http://en.wikipedia.org/wiki/Bayesian_inference) and [conjugate priors](http://www.johndcook.com/blog/conjugate_prior_diagram/).
The punchline is that we can avoid overfitting by adding [pseudocounts](http://en.wikipedia.org/wiki/Pseudocount) to empirical word counts, which have the effect of [smoothing](http://en.wikipedia.org/wiki/Additive_smoothing) estimates.

As for the second problem of feature independence, we addressed this by abandoning naive Bayes in favor of [logistic regression](http://www.stat.cmu.edu/~cshalizi/uADA/12/lectures/ch12.pdf).
Logistic regression makes predictions using the same functional form as naive Bayes---the log-odds are modeled as a weighted combination of feature values---but fits these weights in a manner that accounts correlations between features.
We (once again) applied the maximum likelihood principle to arrive at criteria for estimating these weights, and discussed gradient descent and [Newton's methods](http://en.wikipedia.org/wiki/Newton's_method) for solutions.
See Chapter 4 of [Intro to Statistical Learning](http://www-bcf.usc.edu/~gareth/ISL/getbook.html) or Section 4.4 of [The Elements of Statistical Learning Theory](http://statweb.stanford.edu/~tibs/ElemStatLearn/) for more details.

Code for [visualizing Bayesian updates](http://bayesianbiologist.com/2011/09/10/visualizing-bayesian-updating/) and [naive Bayes in R](http://joshwalters.com/2012/11/27/naive-bayes-classification-in-r.html) is on the [course GitHub page](https://github.com/jhofman/msd2015/tree/master/lectures/lecture_7).
