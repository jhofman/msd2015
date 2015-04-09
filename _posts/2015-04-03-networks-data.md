---
layout: post
title:  "Lecture 10: Network Data"
date:   2015-04-03 12:00:00
categories: lectures
---

We spent this lecture discussing network data, beginning with a history of graph theory dating back to [Euler](http://en.wikipedia.org/wiki/Seven_Bridges_of_Königsberg).
An overly brief summary of our whirlwind tour through several centuries of related math and science goes like this.

People have studied _theoretical_ problems on and properties of graphs for a long time, but only in the last few decades have we had access to _real network data_, such as online social networks or the topology of the Internet.
When these data became available, it quickly became clear that real networks looked quite different than well-studied theoretical models (e.g., [Erdős–Rényi](http://en.wikipedia.org/wiki/Erdős–Rényi_model) random graphs).
For example, many real networks have highly [skewed degree distributions](http://en.wikipedia.org/wiki/Complex_network#Scale-free_networks), reflecting the fact that most people in a social network have few friends while only a few people have many friends.
At the same time, social networks typically have [short path lengths](http://en.wikipedia.org/wiki/Small-world_network), in the sense that one needs only to traverse a handful of links to connect a randomly selected set of people in the network.

To better understand properties of networks and how to compute them, we looked at a few example networks in R using the ``igraph`` package.
See this [Rmarkdown notebook](http://rpubs.com/jhofman/networks) for different representations of networks and details for computing degree distributions and path length distributions.
Additional details and references are in the [outline and code](https://github.com/jhofman/msd2015/tree/master/lectures/lecture_10/) on the GitHub page.
See also Easley and Kleinberg's freely available [Networks, Crowds, and Markets](http://www.cs.cornell.edu/home/kleinber/networks-book/) book, specifically chapters 2, 18, and 20.

We finished up this class by looking at [APIs](http://en.wikipedia.org/wiki/Application_programming_interface#Web_APIs), for accessing data from web services.
Specifically, we used the [New York Times Developer API](http://developer.nytimes.com) to search and download published articles.
Their [API console](http://developer.nytimes.com/io-docs) is a particularly friendly way to discover its capabilities without needed to immediately write code.
We also briefly looked at [YQL](https://developer.yahoo.com/yql/console/), Yahoo's language for interacting with a large number of APIs in a standardized, SQL-like format.
See Zapier's [short course](https://zapier.com/learn/apis/) for more details about APIs.
