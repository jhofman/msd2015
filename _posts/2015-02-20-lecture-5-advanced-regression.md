---
layout: post
title:  "Lecture 5: Advanced Regression"
date:   2015-02-20 12:00:00
categories: lectures
---

## old business

We began this lecture with two old items of business:

- proof of positivity of the hessian
- modeling the "views" data.

The first of these is a mathematical point which 
is important for understanding how the "L2 norm" of error,
or if you like, the maximum likelihood appoach with additive
Gaussian noise, leads to a well-posed inference problem.

The second of these is a fun data exploration and modeling
challenge. A bit of data viz hacking (helped by [LOWESS](http://en.wikipedia.org/wiki/Local_regression))
shows us trends which suggest a form of model, validated
by model selection (under cross-validation). That is, the model
that "looked right" (quadratic fit) was also the one selected
by cross validatoin.

## new business


# Model Selection without the code

We then discussed a different approach to model selection
based on the Bayes Factor. Applying a Laplace approximation
to the resulting integral, along with a scaling argument
about the Bayes Factor's dependence on "N" (number of observaitons)
and "K" (number of parameters), we derived the BIC.
(See also the [original](http://projecteuclid.org/download/pdf_1/euclid.aos/1176344136) paper, or the discussion in [ESL](http://statweb.stanford.edu/~tibs/ElemStatLearn/ .)

We need to be careful about the assumptions and approximations
underlying this approach. I also mentioned the myriad other
penalized log-likelihoods used in practice, each with slightly
differnet arguments, with varying levels of rigor.

# Limits to regression

Next we discussed practical limits to regression, including
in the large-N case, when the cost function is expensive
to compute, or the large-K case, when matrix inversion is
impractical. We presented several solutions, including

- [coordinate descent](http://en.wikipedia.org/wiki/Coordinate_descent) (requres solving something)
   + NB: where is the regulariation?
- [gradient descent](http://en.wikipedia.org/wiki/Gradient_descent) (with step size)
- [stochastic](http://en.wikipedia.org/wiki/Stochastic_gradient_descent) (and parallelism)

Lecture notes with links to code can be found 
[here](https://github.com/jhofman/msd2015/blob/master/lectures/lecture_5/README.md)
