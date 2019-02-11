---
layout: post
title:  "Lecture 3: Computational complexity"
categories: lectures
---

We had a guest lecture from [Sid Sen](http://sidsen.org/) on computational complexity and algorithm analysis.

![Algorithm runtime in seconds, from Kleinberg & Tardos]({{ site.url }}/img/runtime_table.png)

Sid discussed various ways of analyzing how long algorithms take to run, focusing on worst-case analysis.
We discussed [asymptotic notation](https://www.khanacademy.org/computing/computer-science/algorithms/asymptotic-notation/a/asymptotic-notation) ([big-O](https://www.khanacademy.org/computing/computer-science/algorithms/asymptotic-notation/a/big-o-notation) for upper bounds, [big-omega](https://www.khanacademy.org/computing/computer-science/algorithms/asymptotic-notation/a/big-big-omega-notation) for lower bounds, and [big-theta](https://www.khanacademy.org/computing/computer-science/algorithms/asymptotic-notation/a/big-big-theta-notation) for tight bounds).
The table above, from [Algorithm Design](https://www.pearsonhighered.com/program/Kleinberg-Algorithm-Design/PGM319216.html) by Kleinberg and Tardos, shows how long we should expect different algorithms to run on modern hardware.
The key takeaway is that knowing how to match the right algorithm to your dataset is important.
For instance, when you're dealing with millions of observations, only linear (or maybe [linearithmic](https://en.wikipedia.org/wiki/Time_complexity#Linearithmic_time)) time algorithms are practical.

A few other references:

* A [beginner's guide](https://rob-bell.net/2009/06/a-beginners-guide-to-big-o-notation/) to big-O notation
* Another [introduction to big-O](https://www.interviewcake.com/article/python/big-o-notation-time-and-space-complexity)
* The [big-O cheatsheet](http://bigocheatsheet.com/)

We touched upon a few more advanced topics around the tradeoff between how long something takes to run and how much space it requires. Sid gave a brief overview of [skip lists](https://brilliant.org/wiki/skip-lists/) and mentioned some more recent work by his advisor, Robert Tarjan, on [zip trees](https://arxiv.org/abs/1806.06726v2) (video lecture [here](https://www.youtube.com/watch?v=NxRXhBur6Xs)).

Sid finished his lecture by discussing how this applies to something as simple as taking the intersection of two lists, useful for [joining](https://en.wikipedia.org/wiki/Join_(SQL)) different tables.
A naive approach of comparing all pairs of elements takes quadratic time.
It's relatively easy to do much better by [sorting and merging](https://en.wikipedia.org/wiki/Sort-merge_join) the two sets, reducing this to `n log(n)` time.
And if we're willing to trade space for time, we can use a [hash table](https://en.wikipedia.org/wiki/Hash_table) to get the job done in linear time, known as a [hash join](https://en.wikipedia.org/wiki/Hash_join).

We used the end of lecture to revisit the command line and finish up a few leftover topics. See [last week's post]({% post_url 2019-02-01-lecture-2-counting %}) for links to code from class.

<!-- 
<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/key/ejmirP42ECxx3f" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>
</center>
-->

Next week we'll discuss data manipulation in R. In preparation, make sure to [set up]({% post_url 2019-01-24-installing-tools %}) R and the [tidyverse](https://www.tidyverse.org) packages. If you're new to R, in addition to the readings in R4DS book, check out the [CodeSchool](http://tryr.codeschool.com) and [DataCamp](https://www.datacamp.com/courses/free-introduction-to-r) intro to R courses. Also have a look at the slides and code we'll discuss in class next week, which are [up on github](https://github.com/jhofman/msd2019/tree/master/lectures/lecture_3).
     
