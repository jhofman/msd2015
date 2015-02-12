---
layout: post
title:  "Lecture 3: Counting at Scale"
date:   2015-02-06 12:00:00
categories: lectures
---

We started this lecture with a brief tour of [data manipulation in R](http://rpubs.com/jhofman/intro) using the [RStudio](http://www.rstudio.com) IDE.
In particular, we focused on [Hadley Wickham's](http://had.co.nz) latest tool, ``dplyr`` ([CRAN](http://cran.r-project.org/web/packages/dplyr/index.html), [GitHub](https://github.com/hadley/dplyr)), which provides a particularly nice implementation for [split/apply/combine](http://bit.ly/splitapplycombine) operations, especially when used with ``magrittr``'s piping operator ([CRAN](http://cran.r-project.org/web/packages/magrittr/index.html), [GitHub](https://github.com/smbache/magrittr)).
We then used ``dplyr`` to [explore Movielens ratings](http://rpubs.com/jhofman/movielens).
We also took a quick look at Hadley's powerful ``ggplot2`` plotting library ([CRAN](http://cran.r-project.org/web/packages/ggplot2/index.html), [GitHub](https://github.com/hadley/ggplot2)).
Source for the [RMarkdown notebooks](http://rmarkdown.rstudio.com	) above is available on the [course GitHub page](https://github.com/jhofman/msd2015/tree/master/lectures/lecture_3).

There are [lots of R resources](http://delicious.com/jhofman/r,tutorials) available on the web, but here are a few highlights:

* Interactive "Intro to R" courses from [codeschool](http://tryr.codeschool.com) and [DataCamp](https://www.datacamp.com/courses/introduction-to-r)
* [Introductory R for Python programmers](https://ramnathv.github.io/pycon2014-r/explore/sac2.html), including some ``dplyr`` and ``ggplot2`` examples
* Hadley's [dplyr tutorial](https://www.dropbox.com/sh/i8qnluwmuieicxc/AAAgt9tIKoIm7WZKIyK25lh6a), with slides, code, and data
* Dataschool's [video tutorial](http://www.dataschool.io/dplyr-tutorial-for-faster-data-manipulation-in-r/)
* [Intro to ggplot2](http://superbobry.github.io/slides/ggplot2/) slides, with a "10 minute" introduction to R
* Hadley's [Data Wrangling Cheatsheet](http://www.rstudio.com/wp-content/uploads/2015/01/data-wrangling-cheatsheet.pdf) for using ``dplyr`` and ``tidyr``

<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/44409606" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</center>

In the second half of class we talked about counting at scale with [MapReduce](http://research.google.com/archive/mapreduce.html).
At its core, MapReduce is a distributed system for solving the split/apply/combine problem at scale.
The programmer implements a ``map`` function, which defines how records should be split in to groups and a ``reduce`` function that defines what to compute within each group.
The system takes care of the rest of the complex engineering details, from distributed storage to fault tolerance, in a manner that makes the parallelism virtually transparent to the programmer.
We concluded with a first discussion of [Hadoop](http://hadoop.apache.org/), the popular open source implementation of the MapReduce paradigm.