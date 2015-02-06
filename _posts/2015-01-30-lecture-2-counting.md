---
layout: post
title:  "Lecture 2: Introduction to Counting"
date:   2015-01-30 12:00:00
categories: lectures
---

<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/44332354" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</center>

Counting is surprisingly useful for understanding and summarizing social data.
While it's a seemingly simple concept, counting can be quite challenging in practice, especially when dealing with large, multi-dimensional data.

We discussed the [split/apply/combine](http://bit.ly/splitapplycombine) paradigm for counting and applied it to several examples from [The Anatomy of the Long Tail](http://5harad.com/papers/long_tail.pdf).
We also looked at alternative models for counting that trade off flexibility for scalability, such as [streaming algorithms](http://en.wikipedia.org/wiki/Streaming_algorithm).
Streaming allows us to compute statistics such as the mean or [variance](http://www.johndcook.com/blog/standard_deviation/) without having to read all of the data into memory first.
We summarized these approaches and compared the types of statistics that can be computed under various conditions.

We concluded with more work on the command line, including some simple counting and exploration of the [CitiBike trip data](system Data).
Scripts are available on the [course github page](https://github.com/jhofman/msd2015/tree/master/lectures/lecture_2/).

Some additional references for working in the shell:

* Lifehacker's [command line primer](http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything)
* Software Carpentry’s [slides/videos](http://software-carpentry.org/v4/shell/)
* A short and concise [introduction to the command line](http://cli.learncodethehardway.org/book/)
* A [wikibook](http://en.wikibooks.org/wiki/Ad_Hoc_Data_Analysis_From_The_Unix_Command_Line) on ad hoc data analysis
* An [awk primer](http://ferd.ca/awk-in-20-minutes.html)
* An extensive [command line book](http://softlayer-dal.dl.sourceforge.net/project/linuxcommand/TLCL/13.07/TLCL-13.07.pdf)
