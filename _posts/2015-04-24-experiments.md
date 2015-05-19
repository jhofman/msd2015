---
layout: post
title:  "Lecture 13: Causality and Experiments"
date:   2015-04-24 12:00:00
categories: lectures
---

Most of what we've discussed in this class has focused on observational data---data obtained without direct intervention from or manipulation by those studying it.
We can learn a lot from observational data and use it to find interesting relationships or generate hypotheses, but it has it limits.
The most serious of these limits arise when we start thinking about _causality_: what might look like a causal relationship might in fact be due to [spurious correlations](http://www.tylervigen.com/spurious-correlations) or confounding factors.
This is often summarized by catchy phrases such as ["correlation is not causation"](http://freakonomics.com/2009/06/30/so-long-and-thanks-for-all-the-f-tests/) or ["no causation without manipulation"](http://freakonomics.com/2009/06/30/so-long-and-thanks-for-all-the-f-tests/).


For a better understanding of why it's difficult to make causal claims from observational data, let's say you're studying the effectiveness of alcoholics anonymous (AA) programs and you manage to find a dataset that provides details on the consumption habits of known alcoholics.
For concreteness, imagine the dataset consists of an indicator for each person that says whether they have participated in AA along with a measure of how long they've been sober.
You might be tempted to take this data, look at the distribution of sobriety for the AA members and the non-members, and use this to say something about the effect of the program.

Let's say you do so and find that AA members tend to stay sober longer than non-members.
Unfortunately this simple observational estimate might drastically overstate the effectiveness of the program, owing to an issue known as _selection bias_.
For instance, it could be the case that the very people who are more likely to stay sober---those who will make a real effort to do so, regardless of whether they're in AA or not---are also more likely to join AA.
If this is true, then simply observing that AA members tend to stay sober longer than non-members might tell you more about the type of people who join AA than about the effectiveness of the program itself.
There are even more drastic effects such as [Simpson's paradox](http://en.wikipedia.org/wiki/Simpson's_paradox) where failing to account for confounding factors leads to a directionally incorrect estimate of an effect: what appears to be a positive correlation without adjusting for possible confounds can in fact become a negative one when all available information is accounted for.

The question you'd really like to answer is this: if you cloned each person and sent one copy of that person through the AA program, but not the other, what would the resulting difference in sobriety be?
Short of being able to do this, we could ask a slightly different question: if we had two groups of people who were nearly identical in every way and we sent one group through AA, but not the other, how would the sobriety of the two groups differ?
This is precisely the idea behind [randomized experiments](http://en.wikipedia.org/wiki/Randomized_experiment), such as [clinical trials](http://en.wikipedia.org/wiki/Clinical_trial) in medicine and [A/B testing](http://en.wikipedia.org/wiki/A/B_testing) for online platforms.
Randomization is key here, as it provides a way of creating two groups that are as similar as possible prior to the treatment (e.g., AA attendance) being administered: if people are randomly assigned to groups, then there shouldn't be any systematic difference between the two groups.
Since the only difference between the groups is that one gets treated and the other doesn't, we can ascribe differences in the outcome to the treatment.

After reviewing the high-level ideas behind experiments, we discussed A/B testing in detail.
Similar to last week's review of statistical inference, we used simulations to look at point estimates, confidence intervals, and hypothesis testing for experiments.
See the [Rmarkdown notebook](http://rpubs.com/jhofman/ab_testing) and [course site](http://glinden.blogspot.com/2007/06/ab-testing-at-amazon-and-microsoft.html) for more notes.
In particular, there are a number of [practical guides](http://glinden.blogspot.com/2007/06/ab-testing-at-amazon-and-microsoft.html) for A/B testing that deal with some of the common issues and pitfalls that arise.

Some additional references:

* Three related textbooks: [Natural Experiments in the Social Sciences](http://www.cambridge.org/us/academic/subjects/politics-international-relations/research-methods-politics/natural-experiments-social-sciences-design-based-approach), [Field Experiments: Design, Analysis, and Interpretation](http://isps.yale.edu/FEDAI), [Mostly Harmless Econometrics](http://www.mostlyharmlesseconometrics.com)

* Matt Blackwell's lecture notes on [causality and potential outcomes](http://www.mattblackwell.org/files/teaching/s03-potential.pdf) as well as [randomized experiments](http://www.mattblackwell.org/files/teaching/s04-experiments.pdf)

* Some notes on [causal inference](http://andrewgelman.com/2007/12/08/causal_inferenc_2/) from Andrew Gelman

* [Bayesian A/B Testing](http://developers.lyst.com/data/2014/05/10/bayesian-ab-testing/)

* The [difficulty](http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2367103) of [measuring the effects of advertising](http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2338892)

* Why to [be skeptical](http://www.vox.com/2015/3/23/8264355/research-study-hype) of most medical studies

* A recent explanation in the New York times of [instrumental variable techniques](http://www.nytimes.com/2015/04/07/upshot/alcoholics-anonymous-and-the-challenge-of-evidence-based-medicine.html) for dealing with non-compliance in randomized trails
