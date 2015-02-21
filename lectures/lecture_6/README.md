## who cares? what works?

- log posterior is a convex loss in data plus a regularizer
- [generic form](http://web.cse.ohio-state.edu/mlss09/mlss09_talks/5.june-FRI/jordan.pdf) in terms of [convex](http://en.wikipedia.org/wiki/Convex_function#Definition) functions; see also [paper](http://arxiv.org/pdf/math/0510521.pdf)
  + in this view, what is coordinate ascent?
    - regression
    - classification

- [boosting](http://en.wikipedia.org/wiki/Boosting_(machine_learning))
   + NB: [simple loss](http://en.wikipedia.org/wiki/AdaBoost)
   + NB: where is the regulariation?
- [pseudocode](http://en.wikipedia.org/wiki/AdaBoost#Example_Algorithm_.28Discrete_AdaBoost.29)
- interpretations

# let's code!

- [titanic data](https://github.com/jhofman/msd2015/blob/master/lectures/lecture_5/ensemble-models.r): predict death
- citibike data
  + some [code](https://github.com/jhofman/msd2015/blob/master/lectures/lecture_5/citi.R): what can we predict?
  + some [exploratory code](https://github.com/chrishwiggins/citibike_analysis/blob/a5134edbde5e577874cc3204c6f3a62ccbbd2218/explore.R), forked from [abe stanway](https://twitter.com/abestanway)'s [analysis](http://abe.is/analyzing-citibike-usage/)

## for later: naive bayes

- mindset
- derivation
- generalization
