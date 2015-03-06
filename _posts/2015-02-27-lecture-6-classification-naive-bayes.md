---
layout: post
title:  "Lecture 6: Classification with Naive Bayes"
date:   2015-02-27 12:00:00
categories: lectures
---

We started this lecture with a high-level overview of the optimization methods for ordinary least squares regression covered in the past two weeks, focusing on the relative strengths and weaknesses of different approaches.
Here's a summary:

Method                      | Space            | Time              | Comments 
------                      | :----:           | :--:              | -------- 
Invert normal equations     | $$ N K + K^2 $$  | $$ K^3 $$         | Good for medium-sized datasets with a relatively small number (e.g., hundreds or thousands) of features
Gradient descent            | $$ N K $$        | $$ NK $$ per step | Good for larger datasets that still fit in memory but have more (e.g., millions) features; requires tuning learning rate
Stochastic gradient descent | $$ K $$          | $$ K $$ per step  | Good for datasets that exceed available memory; more sensitive to learning rate schedule

Then we transitioned from regression, where we're trying to predict a real-valued outcome, to classification, where the outcome is categorical (e.g., whether an email is spam or [ham](https://wiki.apache.org/spamassassin/Ham)).
We first reviewed [Bayes' rule](http://en.wikipedia.org/wiki/Bayes'_rule) for inverting conditional probabilities via a simple, but [somewhat counterintuitive](http://bit.ly/ggbbc), [medical diagnosis example](http://www.scientificamerican.com/article/what-is-bayess-theorem-an/) and then adapted this to an (extremely naive) [one-word spam classifier](https://github.com/jhofman/msd2015/blob/master/lectures/lecture_6/enron_naive_bayes.sh).
We improved upon this by considering all words present in a document and arrived at naive Bayes---a simple linear method for classification in which we model each word occurrence independently and use Bayes’ rule to calculate the probability the document belongs to each class given the words it contains.

<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/45493379" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</center>

A few references:

* [A Bayesian Approach to Filtering Junk E-mail](http://robotics.stanford.edu/users/sahami/papers-dir/spam.pdf) from Sahami, Dumais, Heckerman, and Horvitz (1998)
* [Naive Bayes at 40](http://www.cs.iastate.edu/~honavar/bayes-lewis.pdf) by Lewis (1998)
* [Idiots Bayes---Not So Stupid After All?](http://www.jstor.org/pss/1403452) by Hand and Yu (2001)
* [A Plan for Spam](http://www.paulgraham.com/spam.html) by Paul Graham (2002)
* [Which Naive Bayes?](http://ceas.cc/2006/15.pdf) by Metsis, Androutsopoulos, and Paliouras (2006)

