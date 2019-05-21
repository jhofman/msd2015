---
layout: post
title:  "Lecture 12: Causality & Experiments"
date:   2019-04-26 10:00:00
categories: lectures
---

In this lecture we discussed causal inference, randomized experiments, and natural experiments.

<center>
<script async class="speakerdeck-embed" data-id="f50c15e459d24ecbbe2380a40316a08f" data-ratio="1.77777777777778" src="//speakerdeck.com/assets/embed.js"></script>
</center>

Most of what we've discussed in this class has focused on observational data---data obtained without direct intervention from or manipulation by those studying it.
We can learn a lot from observational data and use it to find interesting relationships, build predictive models, or even to generate hypotheses, but it has it limits.
This is often summarized by catchy phrases such as ["correlation is not causation"](http://freakonomics.com/2009/06/30/so-long-and-thanks-for-all-the-f-tests/) or ["no causation without manipulation"](http://freakonomics.com/2009/06/30/so-long-and-thanks-for-all-the-f-tests/).

We opened this discussion by comparing two scenarios: (a) making a forecast about a static world with (b) trying to predict what happens when you change something in the world.
For the former you might do well by simply recognizing correlations (e.g., seeing my neighbor with an umbrella might predict rain), but the latter requires a more robust model of the world (e.g., handing my neighbor an umbrella is unlikely to cause rain).
We discussed the idea of trying to estimate the "effects of causes", touching on the [potential outcomes](https://en.wikipedia.org/wiki/Rubin_causal_model) and [causal graphical model](https://en.wikipedia.org/wiki/Causal_graph) frameworks.

Using the effect of hospitalization on health as an example, we talked about confounding factors that complicate causal inference.
For instance, my health today might affect both whether I go to the hospital as well as my health tomorrow, making it difficult to isolate the effect of hospitalization on health from other factors.
We saw this mathematized in what Varian calls the "basic identity of causal inference": observational estimates conflate the average treatment effect with selection bias, where selection bias measures the baseline difference between those who opted into treatment and those who didn't. 
We also discussed [Simpson's paradox](http://en.wikipedia.org/wiki/Simpson's_paradox), where selection bias is so large that it leads to a directionally incorrect estimate of a causal effect: what appears to be a positive correlation without adjusting for possible confounds can in fact become a negative one when all available information is accounted for.

We then introduced counterfactuals and [randomized experiments](http://en.wikipedia.org/wiki/Randomized_experiment).
The question you'd really like to answer is this: if you cloned each person and sent one copy of that person to the hospital, but not the other, what would the resulting difference in health be?
Short of being able to do this, we could ask a slightly different question: if we had two groups of people who were nearly identical in every way and we sent one group to the hospital, but not the other, how would the health of the two groups differ?
This is precisely the idea behind randomized experiments, such as [clinical trials](http://en.wikipedia.org/wiki/Clinical_trial) in medicine and [A/B testing](http://en.wikipedia.org/wiki/A/B_testing) for online platforms.
Randomization is key here, as it provides a way of creating two groups that are as similar as possible prior to the treatment (e.g., hospitalization) being administered: if people are randomly assigned to groups, then there shouldn't be any systematic difference between the two groups, eliminating selection bias.
Since the only difference between the groups is that one gets treated and the other doesn't, we can ascribe differences in the outcome to the treatment.

While randomized experiments are the "gold standard" for causal inference, we discussed some caveats and limitations in traditional approaches to experimentation in the social sciences, covering issues of both "internal" and "external" validity.
The first asks whether the experiment was properly designed to isolate the intended effect, whereas the second asks if we should expect the results of the study to generalize to other scenarios.

We discussed natural experiments as an alternative, where the idea is to exploit naturally occuring variation to tease out causal effects from observational data. We followed [Dunning's treatment of instrumental variables](http://www.thaddunning.com/wp-content/uploads/2009/12/Dunning_IEPS_InstrumentalVariables2.pdf) (IV) by looking at randomized experiments with non-compliance, where there's a difference between assignment to treatment (e.g., whether you're told to take a drug) versus receipt of treatment (e.g., whether you actually take it).
The basic idea is that we can estimate two separate quantities: the effect of being assigned a treatment and the odds of actually complying with that assignment.
Dividing the former by the latter provides an estimate of the causal effect of actually receiving the treatment.
Furthermore, we can extend this analysis to situations in which nature provides the randomization instead of a researcher flipping a coin, in which case the source of randomness is referred to as an "instrument" that systematically shifts the probability of being treated.
Classic examples include lotteries or weather events.
<!-- We briefly looked an example of the latter in a recent paper that uses random variations in weather to study [peer effects of exercise](https://www.nature.com/articles/ncomms14753) in social networks. -->
We finished with a brief discussion of regression discontinuity and difference-in-difference designs as well.

References:

* [The Book of Why](http://bayes.cs.ucla.edu/WHY/) by Pearl and Mackenzie
* [Understanding Simpson's Paradox](https://ftp.cs.ucla.edu/pub/stat_ser/r414.pdf) by Judea Pearl
* Chapter 21 of [Advanced Data Analysis from an Elementary Point of View](http://www.stat.cmu.edu/~cshalizi/ADAfaEPoV/)
* Chapters 1 and 2 of [Field Experiments: Design, Analysis, and Interpretation](http://isps.yale.edu/FEDAI)
* Matt Blackwell's lecture notes on [causality and potential outcomes](http://www.mattblackwell.org/files/teaching/s03-potential.pdf) as well as [randomized experiments](http://www.mattblackwell.org/files/teaching/s04-experiments.pdf)
* Some notes on [causal inference](http://andrewgelman.com/2007/12/08/causal_inferenc_2/) from Andrew Gelman
* [Resilient cooperators stabilize long-run cooperation in the finitely repeated Prisoner’s Dilemma](https://www.nature.com/articles/ncomms13800) by Mao, Dworkin, Suri & Watts
* [Causal inference in economics and marketing](http://www.pnas.org/content/113/27/7310.full.pdf) by Hal Varian
* [Instrumental Variables](http://www.thaddunning.com/wp-content/uploads/2009/12/Dunning_IEPS_InstrumentalVariables2.pdf) by Thad Dunning (followup [here](http://www.thaddunning.com/wp-content/uploads/2009/12/Dunning-PA.pdf))
* See Chapter 5 of [Natural Experiments in the Social Sciences](http://www.cambridge.org/gb/academic/subjects/politics-international-relations/research-methods-politics/natural-experiments-social-sciences-design-based-approach) by Dunning for more detail
* [Exercise contagion in a global social network](https://www.nature.com/articles/ncomms14753) by Aral & Nicolaides