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
  - [go through model](http://en.wikipedia.org/wiki/Linear_least_squares_(mathematics)#Derivation_of_the_normal_equations)
)
  - linear algebra
    + [projection](http://en.wikipedia.org/wiki/Ordinary_least_squares#Geometric_approach)
    + inversion

# as probability

- why is error called '[chi-squared](http://en.wikipedia.org/wiki/Chi-squared_distribution)'?
- as probability
- maximim likelihood

# when to stop fitting?

## as generative model
 
- bayesianism
- additive regularizers as MAP instead of MLE


# let's code

- simple regression [code](https://github.com/jhofman/msd2015/blob/master/lectures/lecture_4/intro-regression.R)
  + fake data
  + covariates: scale them and see what happens to coefficients
  + covariates: add some noise
  + covariates: add some linearly dependent ones
- real data: 'views'  
  + (note you will have to [install](https://github.com/jhofman/msd2015/blob/master/lectures/lecture_4/install.all.the.things.R) some things)
  + [data](https://github.com/jhofman/msd2015/blob/master/lectures/lecture_4/users.tsv.gz)
  + [code](https://github.com/jhofman/msd2015/blob/master/lectures/lecture_4/neilsen-polyfit.R)
- add some polynomaisl
- do [cv.glmnet](http://cran.r-project.org/web/packages/glmnet/index.html)  examples via some simple [code](https://github.com/jhofman/msd2015/blob/master/lectures/lecture_4/intro-glmnet.R)
