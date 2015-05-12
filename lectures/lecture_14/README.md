# unfinished business: selection bias


[Consider a world (pdf)]()

# Bandits

## history
- [feynman's restaurant problem](http://www.feynmanlectures.info/exercises/Feynmans_restaurant_problem.html) (choose M of N items from menu, maximizing total rating via "naive" (i.e., switch-to-the-best after D dishes) (spoiler: $D=\sqrt{2(M+1)}-1$)
- [Robbins 1952](https://github.com/chrishwiggins/msd2015org/blob/master/lit/robbins-1952.pdf)


## context/practical matters
- [why bandits are better](https://www.chrisstucchio.com/blog/2012/bandit_algorithms_vs_ab.html) 
- [and why they don't cure experimental problems](https://www.chrisstucchio.com/blog/2015/dont_use_bandits.html) (context, e.g., time)
- GOOG on [MAB](https://support.google.com/analytics/answer/2844870?hl=en&ref_topic=1745207)
- GOOG/MAB's [bibliography](https://support.google.com/analytics/answer/2847946?hl=en&ref_topic=1745207mmsn)
<!---
  - [post on CB](http://sociograph.blogspot.com/2014/01/contextual-multi-armed-bandits.html)
--->

## algos and code

- e-greedy (chalk)
- ucb1 (chalk)
- linucb (chalk)
- annealed softmax (chalk)
- [demo1](https://e76d6ebf22ef8d7e079810f3d1f82ba1e5f145d5.googledrive.com/host/0B2GQktu-wcTiWDB2R2t2a2tMUG8/) from [viz blog](http://www.nowherenearithaca.com/2013/07/exploring-bayesian-bandits-online-tool.html)
- [demo2](http://mark.reid.name/code/bandits/) from Mark Reid; [code](https://github.com/mreid/Bandits/blob/master/js/agents.js#L77)
- example [code](https://gist.github.com/sergeyf) from [Dr. Sergei Feldman](https://twitter.com/SergeyFeldman) (contributor to [VW](https://github.com/JohnLangford/vowpal_wabbit)) (NB: code forked from [anon](https://gist.github.com/anonymous/211b599b7bef958e50af))

# references
- Inequalities: [Hoeffding]
(http://en.wikipedia.org/wiki/Hoeffding's_inequality) (and 
[Markov](http://en.wikipedia.org/wiki/Markov's_inequality))
- Modern age: Auer 2002 (inc. UCB1): P. Auer, N. Cesa-Bianchi, and P. Fischer. Finite-time analysis of the multiarmed bandit problem. Machine Learning, 47, 2002.
- LinUCB: Lihong Li, Wei Chu, John Langford, and Robert E Schapire. A contextual-bandit approach to personalized news article recommendation. In Proceedings of the 19th international conference on World wide web, pages 661-670. ACM, 2010.
- Nathaniel Korda, Prashanth L.A. and Remi Munos, Online gradient descent for least squares regression: Non-asymptotic bounds and application to bandits, arXiv preprint arXiv:1307.3176, 2014.
