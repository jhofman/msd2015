---
layout: post
title:  "Lecture 7: Regression, Part 2"
date:   2017-03-03 10:00:00
categories: lectures
---

This was the second lecture on the theory and practice of regression, focused on model complexity and generalization.

<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/key/AO2fqTF50kBrOb" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</center>

We started by revisiting the pageview prediction problem from last lecture.
Last time we worked on constructing a model that captured some of the trends in typical browsing activity as a function of gender and age.
We saw that including quadratic terms for age and interacting this with age gave a reasonable model, at least in terms of visually matching empirical aggregates.
This time we talked about two high-level points.
First, quantifying model fit and second, knowing when to stop fitting.
In the setting above, this translates to asking "how good is a quadratic fit" and "why shouldn't I use a cubic, or quartic, etc.?"

To the first point, we discussed [root mean squared error (RMSE)](https://en.wikipedia.org/wiki/Root-mean-square_deviation) and the [coefficient of determination ($$R^2$$)](https://en.wikipedia.org/wiki/Coefficient_of_determination) as sensible metrics of model fit.
RMSE is just the squared loss function we discussed last time, with a square root to adjust units to match those of the outcome we're trying to predict.
It's useful when we already have a sense of absolute scale for "what's good".
The coefficient of determination, on the other hand,  captures the fraction of variance in outcomes explained by the model, and is useful when we don't have such a scale or are comparing across different problems.
We showed that this is the same as comparing the mean squared error (MSE) of the model to the MSE of a simple baseline where we always predict the average outcome.
Finally, we discussed the connection between [Pearson's correlation coefficient](https://en.wikipedia.org/wiki/Pearson_correlation_coefficient) and $$R^2$$.
See [here](https://economictheoryblog.com/2014/11/05/proof/) for a proof that the latter is in fact the square of the former.

Applying both of these metrics to the pageview dataset, we saw that while there were systematic trends in typical viewing behavior by age and gender, there was still a surprisingly large amount of variation in individual activity for people of the same age and gender.

This led us to our second high-level topic, the question of complexity control: How complicated should we make our model?
We discussed the idea of generalization error, and how we'd like models that are both complex enough to account for the past and simple enough to predict the future.
Cross-validation is the most common approach to navigating this tradeoff, where we divide our data into a training set for fitting models, a validation set for comparing these different fits, and a test set that's used once (and *only once*) to quote the expected future performance of the model we end up selecting.
We talked about [k-fold cross-validation](https://www.youtube.com/watch?v=TIgfjmp-4BA) as a more statistically robust version of estimating generalization error.

We also phrased this issue in terms of the [bias-variance tradeoff](http://scott.fortmann-roe.com/docs/BiasVariance.html).
Simple models are likely biased in that they systematically misrepresent the world, and would do so even with an infinite amount of data.
At the same time, estimating a simple model is a low variance procedure in that our results don't change substantially when we fit it on different samples of data.
More flexible models, on the other hand, have little bias and can capture more complex patterns in the world.
The downside is that this flexibility also renders such models sensitive to noise, often leading to high variance, or drastically different results with different samples of the data. 

We concluded lecture with a brief discussion of [regularization](https://en.wikipedia.org/wiki/Regularization_%28mathematics%29) as a way of modifying loss functions to improve the generalization error of our models by explicitly balancing the fit to the training data with the "complexity" of the model.
The idea is that introducing some bias in our models is sometimes a good idea if the corresponding reduction in variance is enough to lower the mean squared error. 

Code from the lecture is up
[on Github](https://github.com/jhofman/msd2017/blob/master/lectures/lecture_7/). 
Also see this interactive Shiny App to explore [regularization](https://jmhmsr.shinyapps.io/regularization/).


References:

* Chapter 2 of [An Introduction to Statistical Learning](http://www-bcf.usc.edu/~gareth/ISL/) on the bias-variance tradeoff
* Section 1.4 of [Advanced Data Analysis from an Elementary Point of View](http://www.stat.cmu.edu/~cshalizi/ADAfaEPoV/) on the same, with a more detailed derivation
<!-- http://www.inf.ed.ac.uk/teaching/courses/mlsc/Notes/Lecture4/BiasVariance.pdf -->
* Chapter 5 of [An Introduction to Statistical Learning](http://www-bcf.usc.edu/~gareth/ISL/) and 3 of [Advanced Data Analysis from an Elementary Point of View](http://www.stat.cmu.edu/~cshalizi/ADAfaEPoV/) on resampling and cross-validation
* Recent work on using differentially private mechanisms for [reusing holdout sets](https://research.googleblog.com/2015/08/the-reusable-holdout-preserving.html)