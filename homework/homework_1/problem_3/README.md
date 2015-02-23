### 3. In-memory descriptive statistics
In this problem you'll investigate the impact of inventory size on customer satisfaction for the 10M ratings [MovieLens dataset](http://www.grouplens.org/system/files/ml-10m-README.html) discussed in class, producing the equivalent of Figure 2 from the [Anatomy of the Long Tail](https://5harad.com/papers/long_tail.pdf) for these data.

Specifically, for the subset of users who rated at least 10 movies, produce a plot that shows the fraction of users satisfied (vertical axis) as a function of inventory size (horizontal axis).
We will define "satisfied" as follows: an individual user is satisfied p% of the time at inventory of size k if at least p% of the movies they rated are contained in the top k most popular movies.
As in the paper, produce one curve for the 100% user satisfaction level and another for 90%---do not, however, bother implementing the null model (shown in the dashed lines).

Use the download script to get the ratings data in CSV format and add your solution to ``eccentricity.R``.
