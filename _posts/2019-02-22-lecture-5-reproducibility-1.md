---
layout: post
title:  "Lecture 5: Reproducibility and replication, Part 1"
date: 2019-02-22 10:10:00
categories: lectures
---

We discussed the ongoing [replication crisis](https://en.wikipedia.org/wiki/Replication_crisis) in the sciences, wherein it has proven difficult or impossible for researchers to independently verify results of previously published studies.

<script async class="speakerdeck-embed" data-id="8c1dd50c57e14f26b3a9c8fbc9837376" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

We started off the lecture by talking about how to evaluate research findings. Namely, how can you assess whether the results of a study are believable and/or important?

We took the optimistic view that most researchers are honest, although there are [some exceptions](https://en.wikipedia.org/wiki/List_of_scientific_misconduct_incidents). For instance, a recent study by [LaCour and Green](http://science.sciencemag.org/content/346/6215/1366.full) reported that a single conversation with canvassers had lasting impact on support for gay marriage. But soon after the study was published, Broockman, Kalla, and Aronow found [some irregularities](http://stanford.edu/~dbroock/broockman_kalla_aronow_lg_irregularities.pdf) in the data. The paper was later [retracted](http://www.sciencemag.org/news/2015/05/science-retracts-gay-marriage-paper-without-agreement-lead-author-lacour) on account of the data being fabricated using the results of a previous study. Broockman and Kalla then proceeded to carry out [their own version](http://science.sciencemag.org/content/352/6282/220) of such a study, and ironically found [support for the original hypothesis](https://www.wired.com/2016/04/political-sciences-whistleblowers-rebunk-gay-canvassing-study/). 

While such instantces of fraud are rare, there are other, more common concerns among published studies. The first is *reproducibility*, or whether one can independently verify the results of a study with the same data and same code used in the original paper. Though a low bar, most research currently doesn't pass this test simply because it's often the case that papers are published without all of the supporting data or code. And when the data and code are available, the code can be surprisingly difficult to understand or run, especially when there are complex software dependencies. This is improving as researchers adopt better software engineering practices and develop [guildelines](http://science.sciencemag.org/content/354/6317/1240.full), [best practices](http://www.rctatman.com/files/2018-7-14-MLReproducability.pdf), and [incentives](https://medium.com/@michel.steuwer/artifact-review-and-badging-855dc11b64a0) for reproducibility.

Next we discussed *replicability*, or whether a result holds when a study is repeated with new data but the same analysis as the original paper. The main issue here is that it's easy to be fooled by randomness because noise can dominate signal in small datasets and asking too many questions of the data can lead to overfitting, even with large datasets. We looked at a seminal paper from the [Open Science Collaboration](https://osf.io/vmrgu/), [Estimating the reproducibility of psychological science](http://science.sciencemag.org/content/349/6251/aac4716.full), which conducts replications of 100 published psychology studies and finds that roughly a third replicate, often with smaller effect sizes than reported in the original studies.

This led us to a review of frequentist statistics, which although somewhat of a [statistical ritual](https://www.mpib-berlin.mpg.de/pubdata/gigerenzer/Gigerenzer_2018_Statistical_rituals.pdf), is still an [important one to understand](https://amstat.tandfonline.com/doi/abs/10.1080/00031305.2016.1154108#.XE8wl89KjRY), for better or worse. A short quiz on the topic highlighted that it's easy for newcomers and trained professionals alike to [misunderstand](https://link.springer.com/article/10.1007%2Fs10654-016-0149-3) the meaning of p-values, hypothesis tests, and statistical significance. We reviewed null hypothesis testing through the lens of simulation, in contrast to the usual textbook approach of learning a battery of parametric tests. 

At a high-level, null hypothesis testing asks "how (un)likely are the data I observed under a certain (null) model of the world"? If the data are sufficiently unlikely, we can reject this null model, otherwise our test is inconclusive. The catch is that we have to quantify what consititutes "sufficiently unlikely" and we have to make sure our experiment is actually powerful enough to reject the null when it's false. In the Neyman-Pearson framework, we make choices based on the long-run error rates we're willing to tolerate if this procedure is repeated over and over again. While this is usually taught using a reasonable amount of fancy math, we instead discussed it using brute force simulation, which allowed us to focus on the concepts instead of formulas and recipes. The basic idea is simple: if we'd like to know what to expect if the null model is actually true, we can just simulate many such experiments assuming it's true, look at the distribution of outcomes, and compare what we actually see in the world to the results of our simulations. More details are in this notebook on 
[simulation-based statistical inference](http://htmlpreview.github.io/?https://github.com/jhofman/msd2019/blob/master/lectures/lecture_5/statistical_inference.html) and the [scribed notes](https://github.com/jhofman/msd2019-notes/tree/master/lecture_5).

We'll continue this discussion of statistics, reproducibility, replication, and evaluating research next week.

References:

* [Enhancing reproducibility for computational methods](http://science.sciencemag.org/content/354/6317/1240.full) by Stodden et al.
* [A Practical Taxonomy of Reproducibility for Machine Learning Research](http://www.rctatman.com/files/2018-7-14-MLReproducability.pdf) by Tatman, VanderPlas & Dane
* A post on [ACM's Artifact Review and Badging](https://medium.com/@michel.steuwer/artifact-review-and-badging-855dc11b64a0)
* [Estimating the reproducibility of psychological science](http://science.sciencemag.org/content/349/6251/aac4716.full) from the Open Science Collaboration
* [Statistical Rituals: The Replication Delusion and How We Got There](https://www.mpib-berlin.mpg.de/pubdata/gigerenzer/Gigerenzer_2018_Statistical_rituals.pdf) by Gigerenzer
* The American Statistical Association's [statement on p-values](https://amstat.tandfonline.com/doi/abs/10.1080/00031305.2016.1154108#.XE8wl89KjRY) by Wasserstein & Lazar
* [Statistical tests, P values, confidence intervals, and power: a guide to misinterpretations](https://link.springer.com/article/10.1007%2Fs10654-016-0149-3) by Greenland et al.
* [Seeing Theory](https://seeing-theory.brown.edu), a visual, simulation-based tour of statistics
* Chapters 12 and 13 of [Introduction to Statistical Thinking (With R, Without Calculus)](http://pluto.huji.ac.il/%7Emsby/StatThink/index.html)
* [Introductory Statistics with Randomization and Simulation](https://www.openintro.org/stat/textbook.php)
* Statistics for Hackers by VanderPlas ([slides](https://speakerdeck.com/jakevdp/statistics-for-hackers), [video](https://www.youtube.com/watch?v=Iq9DzN6mvYA))



