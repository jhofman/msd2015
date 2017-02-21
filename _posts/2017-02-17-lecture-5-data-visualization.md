---
layout: post
title:  "Lecture 5: Data Visualization"
date: 2017-02-17 10:10:00
categories: lectures
---

We had a guest lecture from [Çağatay Demiralp](http://hci.stanford.edu/~cagatay//) on data visualization.

<center>
<iframe src="https://docs.google.com/viewer?srcid=0B-M9UEiE6KFAWmtvUjQta0RFNkk&pid=explorer&efh=false&a=v&chrome=false&embedded=true" width="476px" height="400px" frameborder="0" marginwidth="0" marginheight="0"></iframe>
</center>
<!--
<center>
<iframe src="//www.slideshare.net/slideshow/embed_code/key/7VTVGmJRVcQ1Ln" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</center>
-->

Çağatay discussed both the principles and practice of data visualization, starting with historical examples of [John Snow's visualization](https://en.wikipedia.org/wiki/1854_Broad_Street_cholera_outbreak) of cholera outbreaks and [Florence Nightingale's infographic](https://en.wikipedia.org/wiki/Florence_Nightingale#/media/File:Nightingale-mortality.jpg) on causes of death in the army.
He emphasized Stuart Card's point that visualizations represent data in a way that [amplifies cognition](https://books.google.com/books?id=wdh2gqWfQmgC&lpg=PP1&dq=Readings%20in%20Information%20Visualization%3A%20Using%20Vision%20to%20Think&pg=PA15#v=onepage&q=amplify%20cognition&f=false), making it easier to see patterns in data, a point nicely illustrated by [Anscombe's Quartet](https://en.wikipedia.org/wiki/Anscombe%27s_quartet).

We discussed the perceptual aspects of visualizations, including [Stevens' Power Law](https://en.wikipedia.org/wiki/Stevens%27_power_law), and experiments by [Cleveland and McGill](http://www.jstor.org/stable/2288400?seq=1#page_scan_tab_contents) showing that not all visual encodings are created equal, and that the best encoding depends on the type of data being visualized.
He closed with a discussion of different data visualization tools, including [Mackinlay's](http://dl.acm.org/citation.cfm?id=22950) expressiveness / effectiveness tradeoff and [Wilkinson's](https://en.wikipedia.org/wiki/Leland_Wilkinson) grammar of graphics.

In the second part of class we look at `ggplot2`, Hadley Wickham's popular implementation of Wilkinson's grammar of graphics.
We focused on using `ggplot2` to  effectively communicate information through visualizations.
Every visualization should convey a point, preferrably one that can be summarized by a short sentence.
This [Jupyter notebook](https://github.com/jhofman/msd2017/blob/master/lectures/lecture_5/visualization_with_ggplot2.ipynb) provides an intro to `ggplot2`, detailing how the choices we make in the visualization process affect the messages our plots and figures convey.

Readings and references:

* Chapters [3](http://r4ds.had.co.nz/data-visualisation.html), [7](http://r4ds.had.co.nz/exploratory-data-analysis.html), and [28](http://r4ds.had.co.nz/graphics-for-communication.html) in [R for Data Science](http://r4ds.had.co.nz/)
* RStudio's [ggplot2 cheatsheet](https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf)
* DataCamp's [Data Visualization with ggplot2](https://campus.datacamp.com/courses/data-visualization-with-ggplot2-1/) tutorial
* Videos on [Visualizing Data with ggplot2](http://varianceexplained.org/RData/lessons/lesson2/)
* Sean Anderson's [ggplot2 slides](http://seananderson.ca/courses/12-ggplot2/ggplot2_slides_with_examples.pdf) ([code]((http://github.com/seananderson/datawranglR))) for more examples
* The [official ggplot2 docs](http://docs.ggplot2.org/current/)
