---
layout: post
title:  "Lecture 11: Causality & Experiments, Part 1"
date:   2017-04-21 10:00:00
categories: lectures
---

This was a joint guest lecture from [Andrew Mao](http://www.andrewmao.net) and [Amit Sharma](http://www.andrewmao.net) with an overview of causal inference and randomized experiments.

<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/key/J5DJRcIaKj5xU8" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</center>

Most of what we've discussed in this class has focused on observational data---data obtained without direct intervention from or manipulation by those studying it.
We can learn a lot from observational data and use it to find interesting relationships, build predictive models, or even to generate hypotheses, but it has it limits.
This is often summarized by catchy phrases such as ["correlation is not causation"](http://freakonomics.com/2009/06/30/so-long-and-thanks-for-all-the-f-tests/) or ["no causation without manipulation"](http://freakonomics.com/2009/06/30/so-long-and-thanks-for-all-the-f-tests/).

Amit opened this discussion by comparing two scenarios: (a) making a forecast about a static world with (b) trying to predict what happens when you change something in the world.
For the former you might do well by simply recognizing correlations (e.g., seeing my neighbor with an umbrella might predict rain), but the latter requires a more robust model of the world (e.g., handing my neighbor an umbrella is unlikely to cause rain).
We discussed the idea of trying to estimate the "effects of causes", touching on the [potential outcomes](https://en.wikipedia.org/wiki/Rubin_causal_model) and [causal graphical model](https://en.wikipedia.org/wiki/Causal_graph) frameworks.

Using the effect of hospitalization on health as an example, we talked about confounding factors that complicate causal inference.
For instance, my health today might affect both whether I go to the hospital as well as my health tomorrow, making it difficult to isolate the effect of hospitalization on health from other factors.
We saw this mathematized in what Varian calls the "basic identity of causal inference": observational estimates conflate the average treatment effect with selection bias, where selection bias measures the baseline difference between those who opted into treatment and those who didn't. 
Amit also discussed [Simpson's paradox](http://en.wikipedia.org/wiki/Simpson's_paradox), where selection bias is so large that it leads to a directionally incorrect estimate of a causal effect: what appears to be a positive correlation without adjusting for possible confounds can in fact become a negative one when all available information is accounted for.

Andrew then introduced counterfactuals and [randomized experiments](http://en.wikipedia.org/wiki/Randomized_experiment).
The question you'd really like to answer is this: if you cloned each person and sent one copy of that person to the hospital, but not the other, what would the resulting difference in health be?
Short of being able to do this, we could ask a slightly different question: if we had two groups of people who were nearly identical in every way and we sent one group to the hospital, but not the other, how would the health of the two groups differ?
This is precisely the idea behind randomized experiments, such as [clinical trials](http://en.wikipedia.org/wiki/Clinical_trial) in medicine and [A/B testing](http://en.wikipedia.org/wiki/A/B_testing) for online platforms.
Randomization is key here, as it provides a way of creating two groups that are as similar as possible prior to the treatment (e.g., hospitalization) being administered: if people are randomly assigned to groups, then there shouldn't be any systematic difference between the two groups, eliminating selection bias.
Since the only difference between the groups is that one gets treated and the other doesn't, we can ascribe differences in the outcome to the treatment.

While randomized experiments are the "gold standard" for causal inference, Andrew discussed some caveats and limitations in traditional approaches to experimentation in the social sciences, covering issues of both "internal" and "external" validity.
The first asks whether the experiment was properly designed to isolate the intended effect, whereas the second asks if we should expect the results of the study to generalize to other scenarios.
He proposed large-scale online experiments as a new paradigm that addresses some of these issues, and demonstrated the power of this approach with an in-class replication of his recent experiment showing how people learn to cooperate in the long-run even when it's not in their interest to do so in the short term.

Amit closed the lecture by introducing natural experiments, where the idea is to exploit naturally occuring variation to tease out causal effects from observational data.
More on this next lecture.

References:

* [Causal inference in economics and marketing](http://www.pnas.org/content/113/27/7310.full.pdf) by Hal Varian
* Chapter 21 of [Advanced Data Analysis from an Elementary Point of View](http://www.stat.cmu.edu/~cshalizi/ADAfaEPoV/)
* [Resilient cooperators stabilize long-run cooperation in the finitely repeated Prisoner’s Dilemma](https://www.nature.com/articles/ncomms13800) by Mao, Dworkin, Suri & Watts
* [TurkServer](http://turkserver.readthedocs.io/en/latest/), the platform Andrew used for this experiment
* Chapters 1 and 2 of [Field Experiments: Design, Analysis, and Interpretation](http://isps.yale.edu/FEDAI)
* Matt Blackwell's lecture notes on [causality and potential outcomes](http://www.mattblackwell.org/files/teaching/s03-potential.pdf) as well as [randomized experiments](http://www.mattblackwell.org/files/teaching/s04-experiments.pdf)
* Some notes on [causal inference](http://andrewgelman.com/2007/12/08/causal_inferenc_2/) from Andrew Gelman
* Why to [be skeptical](http://www.vox.com/2015/3/23/8264355/research-study-hype) of most medical studies
