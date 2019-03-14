---
layout: post
title:  "Lecture 6: Reproducibility and replication, Part 2"
date:   2019-03-01 10:00:00
categories: lectures
---

This was our second lecture on reproducibility and replication in which we discussed false discoveries, effect sizes, and p-hacking / researcher degrees of freedom. 

<center>
<script async class="speakerdeck-embed" data-id="ce73cc7b18114447b75619411419bd76" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>
</center>

The [previous lecture]({% post_url 2019-02-22-lecture-5-reproducibility-1 %}) provided a high-level overview of the ongoing replication crisis in the sciences. In this lecture we continued the discussion, first by talking about false discoveries. Following Felix Schönbrodt's excellent [blog post](http://www.nicebread.de/whats-the-probability-that-a-significant-p-value-indicates-a-true-effect/), we talked about how underpowered studies lead to false discoveries. Then we went on to discuss [effect sizes](https://transparentstats.github.io/guidelines/effectsize.html), specifically [Cohen's d](https://en.wikipedia.org/wiki/Effect_size#Cohen's_d) and the [AUC](https://en.wikipedia.org/wiki/Effect_size#Common_language_effect_size), through this excellent [visual tool](https://rpsychologist.com/d3/cohend/). 

Next we spoke about [post-hoc data analysis](https://en.wikipedia.org/wiki/Post_hoc_analysis) and [p-hacking](https://en.wikipedia.org/wiki/Data_dredging).  We looked at the [False-Positive Psychology](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1850704) paper by Simmons, Nelson & Simonsohn, which has an illustrative example of how one can arrive at non-sensical conclusions if there's enough flexibility in data collection and analysis. Gelman and Loken's [The Garden of Forking Paths](http://www.stat.columbia.edu/~gelman/research/unpublished/p_hacking.pdf) makes a similar point, noting that this can often occur without mal intent on the part of the researcher. While these issues are complex, there are few best practices (e.g., running pilot studies followed by [pre-registration](https://aspredicted.org) of high-powered, large-scale experiments) that can help mitigate these concerns.
[Registered reports](http://www.sciencemag.org/careers/2015/12/register-your-study-new-publication-option) are a particularly attractive solution, wherein researchers write up and submit an experimental study for peer review *before* the study is conducted. Reviewers make an acceptance decision at this point based on the merit of the study, and, if accepted, it is published regardless of the results. We also discussed how these ideas that come largely from randomized experiments might be adapted for observational studies.

We finished up class by talking about a few tools for computational reproducibility, specifically [RMarkdown](https://rmarkdown.rstudio.com) for reproducible documents and [Makefiles](https://bost.ocks.org/mike/make/) for efficient workflows. Example files are up
[on Github](https://github.com/jhofman/msd2019/tree/master/lectures/lecture_6).


References:

* A guide on [effect sizes](https://transparentstats.github.io/guidelines/effectsize.html) and related [blog post](https://transparentstatistics.org/2018/07/05/meanings-effect-size/)
* [Interpreting Cohen's d effect size](https://rpsychologist.com/d3/cohend/)
* [The New Statistics: Why and How](https://journals.sagepub.com/doi/pdf/10.1177/0956797613504966) by Cummings
* [The Insignificance of Significance Testing](https://www.jstor.org/stable/3802789?seq=1#metadata_info_tab_contents) by Johnson
* [The Insignificance of Null Hypothesis Significance Testing](https://journals.sagepub.com/doi/abs/10.1177/106591299905200309) by Gill
* [Why Most Published Research Findings Are False](http://journals.plos.org/plosmedicine/article/file?id=10.1371/journal.pmed.0020124&type=printable)
* Felix Schönbrodt's [blog post](http://www.nicebread.de/whats-the-probability-that-a-significant-p-value-indicates-a-true-effect/) and 
[shiny app](http://shinyapps.org/apps/PPV/) on misconceptions about p-values and false discoveries
* [Calculating the power of a test](http://www.cyclismo.org/tutorial/R/power.html)
* [Power failure: why small sample size undermines the reliability of neuroscience](http://www.nature.com/nrn/journal/v14/n5/pdf/nrn3475.pdf) by Button, et. al.
* [False-Positive Psychology](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1850704) by Simmons, Nelson & Simonsohn
* [The garden of forking paths](http://www.stat.columbia.edu/~gelman/research/unpublished/p_hacking.pdf) by Gelman & Loken
* [The cumulative effect of reporting and citation biases on the apparent efficacy of treatments](https://www.cambridge.org/core/journals/psychological-medicine/article/cumulative-effect-of-reporting-and-citation-biases-on-the-apparent-efficacy-of-treatments-the-case-of-depression/71D73CADE32C0D3D996DABEA3FCDBF57/core-reader) by de Vries et al. ([popular coverage](https://www.nytimes.com/2018/09/24/upshot/publication-bias-threat-to-science.html?em_pos=small&emc=edit_up_20180924&nl=upshot&nl_art=0&nlid=57978065emc%3Dedit_up_20180924&ref=headline&te=1))
* Pre-registration portals from the [Open Science Framework](https://osf.io/registries/), [Center for Open Science](https://cos.io/prereg/), and [AsPredicted.org](https://aspredicted.org/index.php)
* Science magazine's announcement of [registered reports](http://www.sciencemag.org/careers/2015/12/register-your-study-new-publication-option)
* [Why Use Make](https://bost.ocks.org/mike/make/) by Mike Bostock
* [GNU Make for Reproducible Data Analysis](http://zmjones.com/make/)
* [RMarkdown cheatsheet](https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf)
* [RStudio's RMarkdown site](https://rmarkdown.rstudio.com/)
* The [RMarkdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/) book

<!-- measures of effect size rosenthal https://books.google.com/books?hl=en&lr=&id=p-aFAwAAQBAJ&oi=fnd&pg=PA231&dq=parametric+measure+of+effect+size+rosenthal&ots=TVzKQfiJTJ&sig=JwandSbd84lwhv0BeK0O9FX8k70#v=onepage&q&f=false -->