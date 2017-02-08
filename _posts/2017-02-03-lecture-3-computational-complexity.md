---
layout: post
title:  "Lecture 3: Computational complexity"
categories: lectures
---

We had a guest lecture from [Sid Sen](http://www.cs.princeton.edu/~sssix/) on computational complexity and algorithm analysis.

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

Sid finished his lecture by discussing how this applies to something as simple as taking the intersection of two lists, useful for [joining](https://en.wikipedia.org/wiki/Join_(SQL)) different tables.
A naive approach of comparing all pairs of elements takes quadratic time.
It's relatively easy to do much better by [sorting and merging](https://en.wikipedia.org/wiki/Sort-merge_join) the two sets, reducing this to `n log(n)` time.
And if we're willing to trade space for time, we can use a [hash table](https://en.wikipedia.org/wiki/Hash_table) to get the job done in linear time, known as a [hash join](https://en.wikipedia.org/wiki/Hash_join).

<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/key/ejmirP42ECxx3f" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>
</center>

We used the second half of lecture to discuss [data manipulation in R](https://github.com/jhofman/msd2017/blob/master/lectures/lecture_3/intro_to_r.ipynb), specifically focusing on using [`dplyr`](https://github.com/hadley/dplyr) from the [`tidyverse`](http://tidyverse.org) for a convenient implementation of the split / apply / combine framework.

We started this lecture with a brief tour of  using the [RStudio](http://www.rstudio.com) IDE.
In particular, we focused on [Hadley Wickham's](http://had.co.nz) latest tool, ``dplyr`` ([CRAN](http://cran.r-project.org/web/packages/dplyr/index.html), [GitHub](https://github.com/hadley/dplyr)), which provides a particularly nice implementation of the [split/apply/combine](http://bit.ly/splitapplycombine) paradigm.
Source code is available on the [course GitHub page](https://github.com/jhofman/msd2017/tree/master/lectures/lecture_3).

There are [lots of R resources](https://pinboard.in/u:jhofman/t:r/t:tutorials/) available on the web, but here are a few highlights:

* [CodeSchool](http://tryr.codeschool.com) and [DataCamp](https://www.datacamp.com/courses/free-introduction-to-r) intro to R courses
* More about [basic types](http://www.r-tutor.com/r-introduction/basic-data-types) (numeric, character, logical, factor) in R
* Vectors, lists, dataframes: a [one page reference](http://www.statmethods.net/input/datatypes.html) and [more details]
* Chapters [1](http://r4ds.had.co.nz/introduction.html), [2](http://r4ds.had.co.nz/explore-intro.html), and [5](http://r4ds.had.co.nz/transform.html) of [R for Data Science](http://r4ds.had.co.nz)
* DataCamp's [Data Manipulation in R](https://campus.datacamp.com/courses/dplyr-data-manipulation-r-tutorial) tutorial
(https://en.wikibooks.org/wiki/R_Programming/Data_types)
* The [dplyr vignette](http://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html)
* Sean Anderson's [dplyr and pipes examples](http://seananderson.ca/2014/09/13/dplyr-intro.html) ([code](https://github.com/seananderson/dplyr-intro-2014) on github)
* Rstudio's [data wrangling cheatsheet](http://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)
* Hadley Wickham's [R style guide](http://adv-r.had.co.nz/Style.html)
     