regression
==

intro: [the name](http://projecteuclid.org/download/pdf_1/euclid.ss/1177012581)



# within machine learning

- UL (x)
    - explain
- SL (y|x) 
  + classificatin
  + regression
    - predict, explain
- RL (y|x,a)
    - predict, explain, control

regression is gateway

# old school Regression

- loss=OSS/SSL
- optimization=OLS
  - model known, e.g., dropping rock
  - go through model
  - linear algebra
    + projection
    + inversion
  - interpreting results

# as probability

- why is error called '[chi-squared](http://en.wikipedia.org/wiki/Chi-squared_distribution)'?
- as probability
- maximim likelihood

# when to stop fitting?

## as generative model
 
- bayesianism
- additive regularizers as MAP instead of MLE

## who cares? what works?

- log posterior is a convex loss in data plus a regularizer
- [generic form](http://web.cse.ohio-state.edu/mlss09/mlss09_talks/5.june-FRI/jordan.pdf) in terms of [convex](http://en.wikipedia.org/wiki/Convex_function#Definition) functions; see also [paper](http://arxiv.org/pdf/math/0510521.pdf)

# let's code

- fake data
- covariates: scale them and see what happens to coefficients
- covariates: add some noise
- covariates: add some linearly dependent ones
- real data: 'views'
- add some polynomaisl
- do [cv.glmnet](http://cran.r-project.org/web/packages/glmnet/index.html)  examples

# optimization

- gradient descent
- stochastic gradient descent
- connect with parallelism

# time permitting: BIC

- derivation
- innoculation
