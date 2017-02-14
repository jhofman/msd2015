---
layout: post
title:  "Lecture 4: Counting at Scale"
categories: lectures
---

In this lecture we discussed combining and reshaping data in R as well as counting at scale with MapReduce.

First we extended last week's discussion of data manipulation in R by looking at the various joins (inner, left, full, and anti) for combining different tables available in `dplyr`.
Then we used the `tidyr` package to reshape data that comes in inconvenient formats (e.g., from long to wide with `spread`, or vice versa with `gather`).

See this [Jupyter notebook](https://github.com/jhofman/msd2017/blob/master/lectures/lecture_4/combine_and_reshape_in_r.ipynb) for more details.
Additional readings include Chapter [12](http://r4ds.had.co.nz/tidy-data.html) of [R for Data Science](http://r4ds.had.co.nz/) for `tidyr` and Chapter [13](http://r4ds.had.co.nz/relational-data.html) for joins.
There are also useful vignettes for [two-table verbs](https://cran.r-project.org/web/packages/dplyr/vignettes/two-table.html) in `dplyr` and [tidy data](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html) with `tidyr`.

<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/key/7VTVGmJRVcQ1Ln" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</center>

In the second half of class we talked about counting at scale with [MapReduce](http://research.google.com/archive/mapreduce.html).
At its core, MapReduce is a distributed system for solving the split/apply/combine problem at scale, essentially functioning as a distributed group-by operation.
The programmer implements a ``map`` function, which defines how records should be split in to groups and a ``reduce`` function that defines what to compute within each group.
The system takes care of the rest of the complex engineering details, from distributed storage to fault tolerance, in a manner that makes the parallelism virtually transparent to the programmer.

[Hadoop](http://hadoop.apache.org/) is a popular open source implementation of the MapReduce paradigm.
We discussed how [Hadoop Streaming](https://hadoop.apache.org/docs/r1.2.1/streaming.html) can be used to scale existing code, and briefly looked at higher-level languages that abstract away some low-level MapReduce details from the programmer.
For instance, [Pig](http://pig.apache.org) is a high-level language that converts sequences of common data analysis operations (e.g., filter, sort, join, group by, etc.) to chains of MapReduce jobs and executes these either locally or across a Hadoop cluster.
[Hive](http://hive.apache.org) is similar, but follows the [SQL](https://en.wikipedia.org/wiki/SQL) paradigm more closely.

See this [CACM article](https://vgc.poly.edu/~juliana/courses/cs6093/Readings/dean-cacm2008.pdf) and Chapter 2 of [Mining Massive Data Sets](http://mmds.org/) for more on MapReduce.
Michael Noll also has a nice [tutorial](http://www.michael-noll.com/tutorials/writing-an-hadoop-mapreduce-program-in-python/).
And code for the wordcount example we covered in class is on the [course Github page](https://github.com/jhofman/msd2017/tree/master/lectures/lecture_4).