---
layout: post
title:  "Lecture 2: Introduction to Counting"
categories: lectures
---

Counting is surprisingly useful for understanding and summarizing social data. The key is figuring out what to count and how to count it efficiently.

<center>
<script async class="speakerdeck-embed" data-id="0c088c1b50e44966a74c52e0b331995e" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>
</center>

While it's a seemingly simple concept, counting can be quite challenging in practice, especially when dealing with large, multi-dimensional data.

First we discussed simple counting and [margins of error](https://en.wikipedia.org/wiki/Margin_of_error#Calculations_assuming_random_sampling) using simulations. See [here](https://github.com/jhofman/msd2019/blob/master/lecture_2/flip_coins.ipynb) for a simulation-based notebook as well as Chapters 5 and 6 of [Intro to Statistical Thinking (With R, Without Calculus)](http://pluto.huji.ac.il/~msby/StatThink/index.html) for background material. Also, two articles on how calculated margins of error are almost certainly an underestimate of true uncertainty: 
[1](https://www.nytimes.com/interactive/2016/09/20/upshot/the-error-the-polling-world-rarely-talks-about.html), [2](https://www.nytimes.com/2016/10/06/upshot/when-you-hear-the-margin-of-error-is-plus-or-minus-3-percent-think-7-instead.html).

Then we discussed the [split/apply/combine](http://bit.ly/splitapplycombine) paradigm for counting and applied it to several examples from [The Anatomy of the Long Tail](http://5harad.com/papers/long_tail.pdf).
We also looked at alternative models for counting that trade off flexibility for scalability, such as [streaming algorithms](http://en.wikipedia.org/wiki/Streaming_algorithm).
Streaming allows us to compute statistics such as the mean or [variance](http://www.johndcook.com/blog/standard_deviation/) without having to read all of the data into memory first.
We summarized these approaches and compared the types of statistics that can be computed under various conditions.

We concluded with more work on the command line, including some simple counting and exploration of the [CitiBike trip data](https://www.citibikenyc.com/system-data).
Slides and code including an "Introduction to the command line" [notebook](https://github.com/jhofman/msd2019/blob/master/lectures/lecture_2/intro_command_line.ipynb) are available on the [course github page](https://github.com/jhofman/msd2019/tree/master/lectures/lecture_2/).

Additional command line references can be found in the [installing tools]({% post_url 2019-01-20-installing-tools %}) post.
