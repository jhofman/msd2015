---
layout: post
title:  "Lecture 10: Networks I"
date:   2019-04-05 10:00:00
categories: lectures
---

We used this lecture to first go through applications of logistic regression and then to discuss the history of network science.

<!-- We spent this lecture discussing network data, including a whirlwhind tour of the history of network theory, representations and characteristics of networks, and algorithms for analyzing network data. -->

<center>
<script async class="speakerdeck-embed" data-id="7848c1385ff346709bae389edb62613d" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>
</center>

We started off this lecture by revisiting logistic regression, looking at the  problem of modeling which passengers [survived the Titanic disaster](https://www.kaggle.com/c/titanic). We saw that interpreting logistic regression results can be challenging, as coefficients give information about changes in log-odds (as opposed to probabilities directly). We stressed the idea of converting back to probabilities and visually comparing predicted and actual values for a range of feature values to better understand the model fit. See [this notebook](http://htmlpreview.github.io/?https://github.com/jhofman/msd2019/blob/master/lectures/lecture_10/interpreting_logistic_regression.html) for details.

Next we discussed [Vowpal Wabbit](https://github.com/VowpalWabbit/vowpal_wabbit/wiki) (VW), an open source tool for various machine learning tasks. VW has many attractive features, such as a flexible input format, speed, scalability, and sensible defaults. For binary classification, VW defaults to fitting a (clipped) linear model to minimize squared loss. We looked at an example of [classifying news](https://github.com/VowpalWabbit/vowpal_wabbit/wiki/Rcv1-example) with VW to get a sense of the interface and performance, which is quite competetive.

Then we moved on to a history of nertwork science.

We talked about some of the earliest studies of networks, such as Jacob Moreno's [sociograms](https://timesmachine.nytimes.com/timesmachine/1933/04/03/99218765.html?action=click&contentCollection=Archives&module=LedeAsset&region=ArchiveBody&pgtype=article&pageNumber=17) and Mark Granovetter's work on the [strength of weak ties](https://sociology.stanford.edu/sites/default/files/publications/the_strength_of_weak_ties_and_exch_w-gans.pdf). We contrasted theoretical models of graphs (e.g., [Erdős–Rényi](http://en.wikipedia.org/wiki/Erdős–Rényi_model) random graphs) to real-world networks, which tend to have highly [skewed degree distributions](http://en.wikipedia.org/wiki/Complex_network#Scale-free_networks) as originally discussed in Derek de Solla Price's studies of [citation networks](http://garfield.library.upenn.edu/papers/pricenetworks1965.pdf). At the same time, social networks typically have [short path lengths](http://en.wikipedia.org/wiki/Small-world_network), in the sense that one needs only to traverse a handful of links to connect a randomly selected set of people in the network.

We finished by discussing different types of networks that we might analyze as well as the various levels of abstraction available for representing them.

More on networks next time.


References:

* The [Vowpal Wabbit Wiki](https://github.com/VowpalWabbit/vowpal_wabbit/wiki)
* Chapters 2, 18, and 20 of Easley and Kleinberg's [Networks, Crowds, and Markets](http://www.cs.cornell.edu/home/kleinber/networks-book/)
* Granovetter's [Strength of Weak Ties](https://sociology.stanford.edu/sites/default/files/publications/the_strength_of_weak_ties_and_exch_w-gans.pdf) paper
* de Solla Price on [citation networks](http://garfield.library.upenn.edu/papers/pricenetworks1965.pdf) and [cumulative advantage](http://garfield.library.upenn.edu/price/pricetheory1976.pdf)
* Milgram's original [small world experiment](https://en.wikipedia.org/wiki/Small-world_experiment)
* [Collective dynamics of 'small-world' networks](https://www.math.cornell.edu/m/sites/default/files/imported/People/strogatz/nature_smallworld.pdf) by Watts & Strogatz

<!--
* [Four degrees of separation](http://web.stanford.edu/~jugander/papers/websci12-fourdegrees.pdf): scaling up calculations to the entire Facebook social graph
* [Customizable route planning](http://www.rebennack.net/SEA2011/files/talks/SEA2011_Pajor.pdf): how shortest path calculations are done in modern mapping applications
* These [slides](https://berkeleydatascience.files.wordpress.com/2012/03/20120320berkeley.pdf) on the early system for friend recommendation on Facebook (pages 28 to 37)
-->


<!--
  BFS computes shortest path: http://www.cs.toronto.edu/~krueger/cscB63h/lectures/BFS.pdf
  BFS runtime and correctness: http://www.cse.ust.hk/faculty/golin/COMP271Sp03/Notes/MyL06.ps
  [MapReduce for networks](http://jakehofman.com/icwsm2010/slides.html)
    https://github.com/jhofman/icwsm2010_tutorial
  [Curse of the last reducer](http://theory.stanford.edu/~sergei/papers/www11-triangles.pdf)
  [Model of MapReduce](http://theory.stanford.edu/~sergei/papers/soda10-mrc.pdf)
  [Facebook at scale](http://arxiv.org/abs/1111.4503)
-->
