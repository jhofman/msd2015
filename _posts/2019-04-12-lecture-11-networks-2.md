---
layout: post
title:  "Lecture 11: Networks II"
date:   2019-04-12 10:00:00
categories: lectures
---

We spent this lecture discussing representations and characteristics of networks and algorithms for analyzing network data.

After discussing many different types of networks that we might analyze as well as the various levels of abstraction available for representing them, we turned to algorithms for efficiently computing shortest path lengths, connected components, mutual friends, and clustering coefficients.

We started with the problem of finding the shortest distance between a single source node and all other nodes in a (undirected, unweighted) network, as measured by the fewest number of edges you need to traverse to get from the source to every other node.
(Every researcher's favorite version of this is computing their [Erdős number](http://en.wikipedia.org/wiki/Erdős_number), the academic take on the more well-known [Kevin Bacon game](http://en.wikipedia.org/wiki/Six_Degrees_of_Kevin_Bacon). Compute yours [here](http://academic.research.microsoft.com).)

Breadth first search (BFS) provides a nice solution.
The intuition behind BFS is simple: we start from the source node and mark it as distance zero from itself.
Then we visit each of its neighbors and mark those as distance one.
We repeat this iteratively, pushing forward a boundary of recently discovered nodes that are one additional hop from the source at each step.
BFS visits each node and edge in a network once, scaling linearly in the size of the network.
If, however, we would like to find the shortest distance between _all pairs_ of nodes then we must repeat this for each possible source node, and so this quickly becomes prohibitively expensive for even moderately sized networks.
(See [here](http://en.wikipedia.org/wiki/Shortest_path_problem#All-pairs_shortest_paths) for fancier, more efficient algorithms.) 

Next we looked at using BFS for a related problem: finding the number of [connected components](http://en.wikipedia.org/wiki/Connected_component_(graph_theory)), or separate pieces, of a network.
We did this by simply looping over our shortest path code, seeding it on each iteration with a currently unreachable node as the source until we reach all nodes.
We gave the reachable nodes in each BFS a unique label corresponding to its component.

Then we moved on to computing the number of friends that any two nodes have in common, motivated by the problem of friend recommendations on social networks.
The underlying idea can be traced back to [Granovetter](https://sociology.stanford.edu/sites/default/files/publications/the_strength_of_weak_ties_and_exch_w-gans.pdf): two people are likely to know each other if they have many mutual friends.
To compute the number of mutual friends between all pairs of nodes, we exploit the fact that the neighbors of every node share that node as a common friend.
To count all mutual friends we simply loop over each node and increment a counter for every pair of its neighbors.
For each node this scales as the square of its degree, so the whole algorithm scales as the sum of the squared degrees of all nodes.
This can quickly become expensive if we have even a few high-degree nodes, which are quite common in practice.

Finally, we looked at the closely related problem of counting the number of triangles around each node in a network.
This algorithm is nearly identical to computing mutual friends, as we generate the same set of two-hop paths through all pairs of a node's neighbors, but simply increment different counters to generate different results.
Instead of accumulating mutual friends for each pair of a node's neighbors, we ask whether every pair of neighbors are themselves directly connected.
If so, we count this as (half of) a triangle in which the node participates.
Dividing the number of closed triangles in a network by the number of possible triangles that could be present gives a useful for how [clustered](http://en.wikipedia.org/wiki/Clustering_coefficient) a network is.

To better understand properties of networks and how to compute them, we looked at a few example networks in R using the ``igraph`` package.
See the [notebooks](https://github.com/jhofman/msd2019/tree/master/lectures/lecture_11) on the course GitHub page for related code and data used in the lectures.

We finished lecture with a preview of issues related to causal inference.

References:

* Chapters 2, 18, and 20 of Easley and Kleinberg's [Networks, Crowds, and Markets](http://www.cs.cornell.edu/home/kleinber/networks-book/)
* [Collective dynamics of 'small-world' networks](https://www.math.cornell.edu/m/sites/default/files/imported/People/strogatz/nature_smallworld.pdf) by Watts & Strogatz
* [Four degrees of separation](http://web.stanford.edu/~jugander/papers/websci12-fourdegrees.pdf): scaling up calculations to the entire Facebook social graph
* [Customizable route planning](http://www.rebennack.net/SEA2011/files/talks/SEA2011_Pajor.pdf): how shortest path calculations are done in modern mapping applications
* These [slides](https://berkeleydatascience.files.wordpress.com/2012/03/20120320berkeley.pdf) on the early system for friend recommendation on Facebook (pages 28 to 37)
* [The Curse of the Last Reducer](http://theory.stanford.edu/~sergei/papers/www11-triangles.pdf)
* [A Model of Computation for MapReduce](http://theory.stanford.edu/~sergei/papers/soda10-mrc.pdf)


<!--
  BFS computes shortest path: http://www.cs.toronto.edu/~krueger/cscB63h/lectures/BFS.pdf
  BFS runtime and correctness: http://www.cse.ust.hk/faculty/golin/COMP271Sp03/Notes/MyL06.ps
  [MapReduce for networks](http://jakehofman.com/icwsm2010/slides.html)
    https://github.com/jhofman/icwsm2010_tutorial
 
  [Facebook at scale](http://arxiv.org/abs/1111.4503)
-->
