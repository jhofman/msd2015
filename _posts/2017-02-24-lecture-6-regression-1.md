---
layout: post
title:  "Lecture 6: Regression, Part 1"
date:   2017-02-24 10:00:00
categories: lectures
---

This was the first of two lectures on the theory and practice of regression.

<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/key/M3UPic6Yfewant" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</center>

We started with a high-level overview of regression, which can be broadly defined as any analysis of how one continuous variable (the "outcome") changes with others (the "inputs", "predictors", or "features").
The goals of a regression analysis can vary, from describing the data at hand, to predicting new outcomes, to explaining the associations between outcomes and predictors.
This includes everything from looking at histograms and scatter plots to building statistical models.


We focused on the latter and discussed ordinary least squares regression.
First, we motivated this as an optimization problem and then connected squared loss minimization to the more general principle of maximum likelihood.
Then we discussed several ways to solve this optimization problem to estimate coefficients for a linear model, which are summarized in the table below.

Method                      | Space            | Time              | Comments 
------                      | :----:           | :--:              | -------- 
Invert normal equations     | $$ N K + K^2 $$  | $$ K^3 $$         | Good for medium-sized datasets with a relatively small number (e.g., hundreds or thousands) of features
Gradient descent            | $$ N K $$        | $$ NK $$ per step | Good for larger datasets that still fit in memory but have more (e.g., millions) features; requires tuning learning rate
Stochastic gradient descent | $$ K $$          | $$ K $$ per step  | Good for datasets that exceed available memory; more sensitive to learning rate schedule

See also this interactive Shiny App to explore [manually fitting a simple model]((https://jmhmsr.shinyapps.io/modelfit/)) and this notebook by Jongbin Jung with [an animation of gradient descent](http://jakehofman.com/gd/).

In the second half of class we looked at fitting linear models in R, with an application to understanding how internet browsing activity varies by age and gender.
See the [Jupyter notebook](https://github.com/jhofman/msd2017/blob/master/lectures/lecture_6/linear_models.ipynb) up on Github for more details.
The main lesson here is that there's more to modeling than just optimization, with many important steps along the way that range from collecting and specifying outcomes and predictors, to determining the form of a model, to assessing performance and interpreting results.

References:

* Chapters [23](http://r4ds.had.co.nz/model-basics.html) and [24](http://r4ds.had.co.nz/model-building.html) of [R for Data Science](http://r4ds.had.co.nz)
* Chapter 3 of [An Introduction to Statistical Learning](http://www-bcf.usc.edu/~gareth/ISL/)
* Chapters 1 and 2 of [Advanced Data Analysis from an Elementary Point of View](http://www.stat.cmu.edu/%7Ecshalizi/ADAfaEPoV/)
* [Statistical Models](http://www.cambridge.org/us/academic/subjects/statistics-probability/statistical-theory-and-methods/statistical-models-theory-and-practice-2nd-edition?format=PB) by David Freedman
* [Regression Analysis](https://us.sagepub.com/en-us/nam/regression-analysis/book226138) by Richard Berk