---
layout: post
title:  "Lecture 9: Clustering"
date:   2015-03-27 12:00:00
categories: lectures
---

[Sergei Vassilvitskii](http://theory.stanford.edu/~sergei/) was a guest lecturer for this class and spoke about clustering.

Clustering, roughly speaking, amounts to grouping items together such that similar items are in the same group.
Key to this idea is how you formalize	 the concept of similarity between items, or equivalently how you [measure distances](http://en.wikipedia.org/wiki/Metric_(mathematics)) between items.
We listed a few basic properties that any reasonable distance measure should have---namely that it be symmetric, reflexive, and respect the triangle inequality.
Euclidean distance is the most popular such metric, but others include [Manhattan distance](http://en.wikipedia.org/wiki/Manhattan_distance), [cosine (dis)similarity](http://en.wikipedia.org/wiki/Cosine_similarity), and [edit distance](http://en.wikipedia.org/wiki/Edit_distance).

Next, we discussed how to measure the quality, or _coherence_, of a cluster through a point that represents it.
Given a representative point for the cluster and a set of points belong to it, we have a number of options, including:

1. The maximum distance between any point in the cluster and the representative.
2. The average distance between all points and the representatives.
3. The average distance between all pairs of points in the cluster, equivalent to the variance of the points.

Each of these leads to a different objective function, and hence different algorithms for finding a good clustering.
Specifically, the first formulation leads to the [k-centers algorithm](http://www.cs.utah.edu/~suresh/5962/lectures/14.pdf), the second to [k-medians](http://en.wikipedia.org/wiki/K-medoids), and the third to [k-means](http://en.wikipedia.org/wiki/K-means_clustering) clustering.

An approximate solution to the k-centers objective results in a simple, hierarchical clustering algorithm that works as follows.
Initialize the algorithm with a randomly chosen center.
Choose the farthest point from this initial center and add it to the list of centers.
Repeat the above, adding the point that has the maximum distance to the set of current clusters.
A proof by contradiction shows that this algorithm comes within a factor of two of an optimal k-centers clustering.
This algorithm is simple to understand and implement, but the underlying objective function is extremely sensitive to outliers---one noisy point can drastically change the resulting clusters it finds.

The k-medians objective, on the other hand, is much more robust to noise.
The downside is that solving the k-medians problem---evenly approximately---is a bit more complicated and costly.
One effective approach is through iterative local search.
We initialize the algorithm with centers chosen randomly from the set of points and assign each point to its nearest center.
Then we greedily look for the best point to swap one center with, and repeat until there are no further improvements to make.
While this approach has the nice feature of being very robust to outliers, its quadratic runtime often makes it infeasible in practice.

K-means strikes a nice balance between the simplicity of k-centers and the robustness of k-means.
It's another iterative local search algorithm, which also begins with a random initialization for cluster centers.
One then loops over two steps: first, assigning points to their nearest centers; and second, the center of each cluster is updated to be the mean of all points belonging to it.
This chicken-and-egg procedure converges to a local minimum of the objective function, and can result in quite different solutions for different initializations.
Sergei briefly presented his work on [k-means++](http://en.wikipedia.org/wiki/K-means%2B%2B), which uses a clever initialization, choosing points in proportion to their contribution to the objective function, which gives provable bounds on the quality of the final clustering.

As we can see from the above, there are many different choices that one has to make in solving clustering problems, including which distance function to use, a measure of cluster quality, and a number of clusters to search for.
Unfortunately, as we saw throughout the lecture, there's no "right" or "wrong" choice for each of these---there are better or worse ones, but this depends on the details of the problem you're looking at.