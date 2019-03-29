---
layout: post
title:  "Lecture 8: Regression, Part 2"
date:   2019-03-15 10:00:00
categories: lectures
---

This was the second lecture on the theory and practice of regression, focused on model complexity and generalization.

<center>
<script async class="speakerdeck-embed" data-id="8b16d5652bae434e8d478f70bcce6724" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>
</center>

We started with an applied modeling problem: understanding how internet browsing activity varies by age and gender. We saw that there's a lot more to modeling than just optimization, with many important steps along the way that range from collecting and specifying outcomes and predictors, to determining the form of a model, to assessing performance and interpreting results. We found that including quadratic terms for age and interacting gender with age gave a reasonable model, at least in terms of visually matching empirical aggregates. See the [linear models](https://github.com/jhofman/msd2019/blob/master/lectures/lecture_7/linear_models.ipynb) notebook up on Github for more details.

Then we talked about two high-level points.
First, quantifying model fit and second, knowing when to stop fitting.
In this case, that translates to asking "how good is a quadratic fit" and "why shouldn't I use a cubic, or quartic, etc.?" or "should I add another interaction?"

To the first point, we discussed [root mean squared error (RMSE)](https://en.wikipedia.org/wiki/Root-mean-square_deviation) and the [coefficient of determination ($$R^2$$)](https://en.wikipedia.org/wiki/Coefficient_of_determination) as sensible metrics of model fit.
RMSE is just the squared loss function we discussed last time, with a square root to adjust units to match those of the outcome we're trying to predict.
It's useful when we already have a sense of absolute scale for "what's good".
The coefficient of determination, on the other hand,  captures the fraction of variance in outcomes explained by the model, and is useful when we don't have such a scale or are comparing across different problems.
We showed that this is the same as comparing the mean squared error (MSE) of the model to the MSE of a simple baseline where we always predict the average outcome.
Finally, we discussed the connection between [Pearson's correlation coefficient](https://en.wikipedia.org/wiki/Pearson_correlation_coefficient) and $$R^2$$.
See [here](https://economictheoryblog.com/2014/11/05/proof/) for a proof that the latter is in fact the square of the former. See the [model evaluation](https://github.com/jhofman/msd2019/blob/master/lectures/lecture_8/model_evaluation.ipynb) notebook on Github for details.

Applying both of these metrics to the pageview dataset, we saw that while there were systematic trends in typical viewing behavior by age and gender, there was still a surprisingly large amount of variation in individual activity for people of the same age and gender.

This led us to our second high-level topic, the question of complexity control: How complicated should we make our model?
We discussed the idea of generalization error, and how we'd like models that are both complex enough to account for the past and simple enough to predict the future.
Cross-validation is the most common approach to navigating this tradeoff, where we divide our data into a training set for fitting models, a validation set for comparing these different fits, and a test set that's used once (and *only once*) to quote the expected future performance of the model we end up selecting.
We talked about [k-fold cross-validation](https://www.youtube.com/watch?v=TIgfjmp-4BA) as a more statistically robust version of estimating generalization error. See the [complexity control](https://github.com/jhofman/msd2019/blob/master/lectures/lecture_8/complexity_Control.ipynb) notebook on Github for details.

We also phrased this issue in terms of the [bias-variance tradeoff](http://scott.fortmann-roe.com/docs/BiasVariance.html).
Simple models are likely biased in that they systematically misrepresent the world, and would do so even with an infinite amount of data.
At the same time, estimating a simple model is a low variance procedure in that our results don't change substantially when we fit it on different samples of data.
More flexible models, on the other hand, have little bias and can capture more complex patterns in the world.
The downside is that this flexibility also renders such models sensitive to noise, often leading to high variance, or drastically different results with different samples of the data. 

We concluded lecture with a brief discussion of [regularization](https://en.wikipedia.org/wiki/Regularization_%28mathematics%29) as a way of modifying loss functions to improve the generalization error of our models by explicitly balancing the fit to the training data with the "complexity" of the model.
The idea is that introducing some bias in our models is sometimes a good idea if the corresponding reduction in variance is enough to lower the mean squared error. 

See Github for an [introduction to glmnet](http://localhost:8888/notebooks/lecture_8/intro_to_glmnet.ipynb) as well as this interactive Shiny App to explore [regularization](https://jmhmsr.shinyapps.io/regularization/).


References:

* Chapter 2 of [An Introduction to Statistical Learning](http://www-bcf.usc.edu/~gareth/ISL/) on the bias-variance tradeoff
* Section 1.4 of [Advanced Data Analysis from an Elementary Point of View](http://www.stat.cmu.edu/~cshalizi/ADAfaEPoV/) on the same, with a more detailed derivation
<!-- http://www.inf.ed.ac.uk/teaching/courses/mlsc/Notes/Lecture4/BiasVariance.pdf -->
* Chapter 5 of [An Introduction to Statistical Learning](http://www-bcf.usc.edu/~gareth/ISL/) and 3 of [Advanced Data Analysis from an Elementary Point of View](http://www.stat.cmu.edu/~cshalizi/ADAfaEPoV/) on resampling and cross-validation
* Recent work on using differentially private mechanisms for [reusing holdout sets](https://research.googleblog.com/2015/08/the-reusable-holdout-preserving.html)
* Chapters [23](http://r4ds.had.co.nz/model-basics.html) and [24](http://r4ds.had.co.nz/model-building.html) of [R for Data Science](http://r4ds.had.co.nz)
* The [modelr](https://modelr.tidyverse.org) and [tidymodels](https://github.com/tidymodels/tidymodels) packages in R
* The [glmnet vignette](https://web.stanford.edu/~hastie/glmnet/glmnet_alpha.html)