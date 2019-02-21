---
layout: post
title:  "Lecture 4: Data Visualization"
date: 2019-02-15 10:10:00
categories: lectures
---

We used this lecture to discuss [data manipulation](https://github.com/jhofman/msd2019/blob/master/lectures/lecture_3/intro_to_r.ipynb) and [data visualization ](https://github.com/jhofman/msd2019/blob/master/lectures/lecture_4/visualization_with_ggplot2.ipynb) in R, specifically focusing on [`dplyr`](https://dplyr.tidyverse.org) and [`ggplot2`](https://ggplot2.tidyverse.org) from the [`tidyverse`](http://tidyverse.org).

<script async class="speakerdeck-embed" data-id="4540923077774710a34ba80dfc9c4dd5" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

The `tidyverse` relies on data being in a "tidy" format of one observation per row, one variable per column, and one value per cell. It provides tools for getting untidy data (of which there's lots) into a tidy format. Once data are in this format, it provides tools for chaining together a string of commands, similar to unix pipes, that makes it very easy to translate ideas and question in your mind into working and readable code. This allows you to spend more time exploring and understanding your data and less time debugging code. 

<script async class="speakerdeck-embed" data-id="5bf041357fc24ff5b9cef83713baed0e" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

We discussed visualization as a way to better understand data and as a way of communicating readers. We briefly reviewed experiments by [Cleveland and McGill](http://www.jstor.org/stable/2288400?seq=1#page_scan_tab_contents) showing that not all visual encodings are created equal, [Mackinlay's](http://dl.acm.org/citation.cfm?id=22950) expressiveness / effectiveness tradeoff, and [Wilkinson's](https://en.wikipedia.org/wiki/Leland_Wilkinson) grammar of graphics. We spent a good amount of time discussing how every visualization should convey a point, preferrably one that can be summarized by a short sentence. These data visualization slides are generously adapted from [Çağatay Demiralp](http://hci.stanford.edu/~cagatay/).

Source code for the examples we reviewed are available on the course Github page: [data manipulation](https://github.com/jhofman/msd2019/tree/master/lectures/lecture_3), [data visualization](https://github.com/jhofman/msd2019/tree/master/lectures/lecture_4).

There are [lots of R resources](https://pinboard.in/u:jhofman/t:r/t:tutorials/) available on the web, but here are a few highlights:

* [CodeSchool](http://tryr.codeschool.com) and [DataCamp](https://www.datacamp.com/courses/free-introduction-to-r) intro to R courses
* More about [basic types](http://www.r-tutor.com/r-introduction/basic-data-types) (numeric, character, logical, factor) in R
* Vectors, lists, dataframes: a [one page reference](http://www.statmethods.net/input/datatypes.html) and [more details]
* Chapters [1](http://r4ds.had.co.nz/introduction.html), [2](http://r4ds.had.co.nz/explore-intro.html), and [5](http://r4ds.had.co.nz/transform.html) of [R for Data Science](http://r4ds.had.co.nz)
* DataCamp's [Data Manipulation in R](https://campus.datacamp.com/courses/dplyr-data-manipulation-r-tutorial) tutorial
* The [dplyr vignette](https://cran.r-project.org/web/packages/dplyr/vignettes/dplyr.html)
* Sean Anderson's [dplyr and pipes examples](http://seananderson.ca/2014/09/13/dplyr-intro.html) ([code](https://github.com/seananderson/dplyr-intro-2014) on github)
* Rstudio's [data wrangling cheatsheet](http://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)
* Hadley Wickham's [split/apply/combine](http://bit.ly/splitapplycombine) paper
* The [tidyverse style guide](https://style.tidyverse.org)
* Chapters [3](http://r4ds.had.co.nz/data-visualisation.html), [7](http://r4ds.had.co.nz/exploratory-data-analysis.html), and [28](http://r4ds.had.co.nz/graphics-for-communication.html) in [R for Data Science](http://r4ds.had.co.nz/)
* DataCamp's [Data Visualization with ggplot2](https://campus.datacamp.com/courses/data-visualization-with-ggplot2-1/) tutorial
* Videos on [Visualizing Data with ggplot2](http://varianceexplained.org/RData/lessons/lesson2/)
* Sean Anderson's [ggplot2 slides](http://seananderson.ca/courses/12-ggplot2/ggplot2_slides_with_examples.pdf) ([code]((http://github.com/seananderson/datawranglR))) for more examples
* RStudio's [cheatsheets](https://www.rstudio.com/resources/cheatsheets/)

