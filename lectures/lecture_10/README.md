networks
========

## intro

- why? who?
  + networks driving discussion in 2015
  + generally
- what's hard?
  + features
  + dimensionality
  + runtime generally
  + the join
    * (select nodes adjacent node one blue one black)
    * [stonebreaker](http://amturing.acm.org/award_winners/stonebraker_1172121.cfm) [quote](http://blogs.barrons.com/techtraderdaily/2015/03/30/michael-stonebraker-describes-oracles-obsolescence-facebooks-enormous-challenge/): "Look at Facebook, it is one giant social graph..."

### psuedo history: models and applications
  - [euler](http://en.wikipedia.org/wiki/Seven_Bridges_of_K%C3%B6nigsberg)
  - [milgram 1967](http://en.wikipedia.org/wiki/Small-world_experiment)
    - 6 degrees
    -  Frigyes Karinthy in 1929
  - social science
    - wasserman + faust, etc.
    - (SBMs) (Holland 1976),
    - [yule, price, simon](http://en.wikipedia.org/wiki/Preferential_attachment)
  - math
    - [Erdős–Rényi](http://en.wikipedia.org/wiki/Erd%C5%91s%E2%80%93R%C3%A9nyi_model) (1959)
    - just because you calculate it doesn't mean it is that way
  - modern reasons we are looking at neworks
    + the internet and www
    + biology/systems biology
    + facebook

### represetnations of networks / what a network looks like on a computer
  - [adjacency matrix](http://www.slideshare.net/jakehofman/lecture-05-networks-part-i/11)
  - [neighbor list= adjacency list](http://www.slideshare.net/jakehofman/lecture-05-networks-part-i/12)
  - [edge list](http://www.slideshare.net/jakehofman/lecture-05-networks-part-i/13)

### types of networks
  - directed/undirected
    + graphs
    + digraphs
    + revisit in-neightbor and out-neighbor ideas
  - multipartite
  - weighted graphs
    + e.g., roads
    + e.g., "strength" of social ties

## what wold one measure? why?

discuss contexts for which each are
relevant. think about how you
would compute them. which are expensive
(space-time) to compute? which are cheap?
how does the answer to the above depend
on how you represented the data?

### node attributes ('centralities')
  - degree
  - clustering coeffficient
    + not clustering
    + in social science
    + in telephone churn
    + how would you compute this?

### edge attributes ('centralities')
  - path centrality

### graph attributes
  - "size"
  - diameter
    + huge topic: how to search for geodesics?
    + how do you find distances?
  - distributions of node/edge centralities

## what can we do with it?

### individual graphs
consider DNA. what do you do?
1. find regions that are statistically dissimilar
2. find repeats

### ensembles of graphs

now do that for networks.

## clustering
- distinct from components
- heuristics
- [newman idea](http://en.wikipedia.org/wiki/Modularity_(networks))
  - implicit null model
- [generative idea](http://arxiv.org/abs/0709.3512)
  + (SBMs) (Holland 1976),
  + connections with unsupervised learning and inference

## "motif discovery" & p-values

## graph attributes
- [as features](http://arxiv.org/abs/q-bio/0408010) in classification

# allowing metadata
- examples
- computational considerations / dimensionality

## graphs as spaces

- embedding
- distances
- similarities, e.g., Jaccard
- diffusion on graphs
- as regularizer to supervised learning

# coding time: example algos

- BFS for a source
- mutual friends all pairs
- convert among formats
- degree distribution

# references
- [mejn](http://arxiv.org/abs/cond-mat/0303516)
