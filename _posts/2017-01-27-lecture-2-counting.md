---
layout: post
title:  "Lecture 2: Introduction to Counting"
categories: lectures
---

Counting is surprisingly useful for understanding and summarizing social data. The key is figuring out what to count and how to count it efficiently.

<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/key/3O721xJmxzHLuh" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>
</center>

While it's a seemingly simple concept, counting can be quite challenging in practice, especially when dealing with large, multi-dimensional data.

We discussed the [split/apply/combine](http://bit.ly/splitapplycombine) paradigm for counting and applied it to several examples from [The Anatomy of the Long Tail](http://5harad.com/papers/long_tail.pdf).
We also looked at alternative models for counting that trade off flexibility for scalability, such as [streaming algorithms](http://en.wikipedia.org/wiki/Streaming_algorithm).
Streaming allows us to compute statistics such as the mean or [variance](http://www.johndcook.com/blog/standard_deviation/) without having to read all of the data into memory first.
We summarized these approaches and compared the types of statistics that can be computed under various conditions.

We concluded with more work on the command line, including some simple counting and exploration of the [CitiBike trip data](https://www.citibikenyc.com/system-data).
Slides and code including an "Introduction to the command line" [notebook](https://github.com/jhofman/msd2017/blob/master/lectures/lecture_2/intro_command_line.ipynb) are available on the [course github page](https://github.com/jhofman/msd2017/tree/master/lectures/lecture_2/).

Additional command line references can be found in the [installing tools]({% post_url 2017-01-20-installing-tools %}) post.
