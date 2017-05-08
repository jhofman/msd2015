---
layout: post
title:  "Lecture 12: Causality & Experiments, Part 2"
date:   2017-04-21 10:00:00
categories: lectures
---

This was our second lecture on causality and experimentation, in which we discussed statistical inference and reproducibility for randomized experiments as well as the design and analysis of natural experiments.

<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/key/Evp79egevHRmoJ" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</center>

The previous lecture provided a high-level overview of experimentation, focusing on randomized experiments as the gold standard for causal inference.
In the first part of this lecture we discussed how to reliably design and analyze randomized experiments.
We began with a review of statistical inference, following [Yakir's approach](http://pluto.huji.ac.il/%7Emsby/StatThink/index.html) of using simulations to look at sampling distributions, point estimates, confidence intervals, hypothesis testing, and power calculations.
The basic idea is that you can circumvent a good deal of theory and simulate things directly by repeatedly sampling data to arrive at the usual results for inference and testing.
This has the downside that it's computationally expensive, but the upside that it presents statistics in a clear, concrete, and practical manner.
See [here](https://github.com/jhofman/msd2017/tree/master/lectures/lecture_12) for the code, and the visually appealing [Seeing Theory](http://students.brown.edu/seeing-theory/) site for more.

Then we discussed several ways in which randomized experiments can go wrong, including [small samples sizes](https://en.wikipedia.org/wiki/Statistical_power), [multiple hypothesis testing](https://en.wikipedia.org/wiki/Multiple_comparisons_problem), [post-hoc data analysis](https://en.wikipedia.org/wiki/Post_hoc_analysis) and [p-hacking](https://en.wikipedia.org/wiki/Data_dredging).
The combination of these effects has led to a [replication crisis](https://en.wikipedia.org/wiki/Replication_crisis) in the social sciences, wherein researchers have found that a number of published experimental findings have failed to replicate in followup studies.
Following Felix Schönbrodt's excellent [blog post](http://www.nicebread.de/whats-the-probability-that-a-significant-p-value-indicates-a-true-effect/), we discussed how underpowered studies lead to false discoveries.
While these issues are complex, there are few best practices (e.g., running pilot studies followed by [pre-registration](https://aspredicted.org) of high-powered, large-scale experiments) that can help mitigate these concerns.
[Registered reports](http://www.sciencemag.org/careers/2015/12/register-your-study-new-publication-option) are a particularly attractive solution, wherein researchers write up and submit an experimental study for peer review *before* the study is conducted.
Reviewers make an acceptance decision at this point based on the merit of the study, and, if accepted, it is published regardless of the results.
Finally, we briefly touched on ethical and practical concerns of running randomized experiments, looking at [Facebook's study of emotional contagion](http://www.pnas.org/content/111/24/8788.full.pdf) and Kohavi et. al.'s [practical tips for running A/B tests](http://www.exp-platform.com/).

In the second part of lecture we moved on to natural experiments.
We followed [Dunning's treatment of instrumental variables](http://www.thaddunning.com/wp-content/uploads/2009/12/Dunning_IEPS_InstrumentalVariables2.pdf) (IV) by looking at randomized experiments with non-compliance, where there's a difference between assignment to treatment (e.g., whether you're told to take a drug) versus receipt of treatment (e.g., whether you actually take it).
The basic idea is that we can estimate two separate quantities: the effect of being assigned a treatment and the odds of actually complying with that assignment.
Dividing the former by the latter provides an estimate of the causal effect of actually receiving the treatment.
Furthermore, we can extend this analysis to situations in which nature provides the randomization instead of a researcher flipping a coin, in which case the source of randomness is referred to as an "instrument" that systematically shifts the probability of being treated.
Classic examples include lotteries or weather events.
We briefly looked an example of the latter in a recent paper that uses random variations in weather to study [peer effects of exercise](https://www.nature.com/articles/ncomms14753) in social networks.
We concluded with a discussion about the benefits and limitations of traditional approaches to finding and arguing for valid instruments, and looked at an example of [data-driven approaches to finding instruments](http://jakehofman.com/inprint/amazonrecs.pdf).


References:

* Chapters 12 and 13 of an [Introduction to Statistical Thinking (With R, Without Calculus)](http://pluto.huji.ac.il/%7Emsby/StatThink/index.html)
* [Why Most Published Research Findings Are False](http://journals.plos.org/plosmedicine/article/file?id=10.1371/journal.pmed.0020124&type=printable)
* [Instrumental Variables](http://www.thaddunning.com/wp-content/uploads/2009/12/Dunning_IEPS_InstrumentalVariables2.pdf) by Thad Dunning (followup [here](http://www.thaddunning.com/wp-content/uploads/2009/12/Dunning-PA.pdf))
* See Chapter 5 of [Natural Experiments in the Social Sciences](http://www.cambridge.org/gb/academic/subjects/politics-international-relations/research-methods-politics/natural-experiments-social-sciences-design-based-approach) by Dunning for more detail
* [Seeing Theory](http://students.brown.edu/seeing-theory/), a visual, simulation-based tour of statistics
* Felix Schönbrodt's [blog post](http://www.nicebread.de/whats-the-probability-that-a-significant-p-value-indicates-a-true-effect/) and 
[shiny app](http://shinyapps.org/apps/PPV/) on misconceptions about p-values and false discoveries
* [Calculating the power of a test](http://www.cyclismo.org/tutorial/R/power.html)
* [Estimating the reproducibility of psychological science](http://science.sciencemag.org/content/sci/349/6251/aac4716.full.pdf) by Nosek, et. al.
* [Power failure: why small samplesize undermines the reliability ofneuroscience](http://www.nature.com/nrn/journal/v14/n5/pdf/nrn3475.pdf) by Button, et. al.
* [False-Positive Psychology](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1850704) by Simmons, Nelson & Simonsohn
* Science magazine's announcement of [registered reports](http://www.sciencemag.org/careers/2015/12/register-your-study-new-publication-option)
* Pre-registration portals from the [Open Science Framework](https://osf.io/registries/), [Center for Open Science](https://cos.io/prereg/), and [AsPredicted.org](https://aspredicted.org/index.php)
* [Experimental evidence of massive-scale emotional contagion through social networks](http://www.pnas.org/content/111/24/8788.full.pdf) by Kramer, Guillory & Hancock
* [The garden of forking paths](http://www.stat.columbia.edu/~gelman/research/unpublished/p_hacking.pdf) by Gelman & Loken
* [Instrumental variables](http://www.nytimes.com/2015/04/07/upshot/alcoholics-anonymous-and-the-challenge-of-evidence-based-medicine.html) for clincal trials discussed in the New York Times
* [Exercise contagion in a global social network](https://www.nature.com/articles/ncomms14753) by Aral & Nicolaides
* [Estimating the causal impact of recommendation systems from observational data](http://jakehofman.com/inprint/amazonrecs.pdf) by Sharma, Hofman & Watts

