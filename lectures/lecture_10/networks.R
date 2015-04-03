library(igraph)
library(ggplot2)
library(dplyr)

theme_set(theme_bw())

########################################
# toy networks
########################################

# create a star network
# look at edge list, adjacency list, and adjacency matrix
star <- graph.star(5, mode="undirected", center=1)
plot(star)
get.edgelist(star)
get.adjedgelist(star)
get.adjacency(star)

# create a lattice network
# look at edge list, adjacency list, and adjacency matrix
grid <- graph.lattice(length=3, dim=2)
plot(grid)
get.edgelist(grid)
get.adjedgelist(grid)
get.adjacency(grid)

# create a ring network
# look at edge list, adjacency list, and adjacency matrix
grid <- graph.ring(10)
plot(grid)
get.edgelist(grid)
get.adjedgelist(grid)
get.adjacency(grid)

# plot a few watts-strogatz small world networks
# mostly a ring
plot(watts.strogatz.game(1, 100, 5, 0.01), layout=layout.circle, vertex.size=1, vertex.label=NA)
# some rewiring
plot(watts.strogatz.game(1, 100, 5, 0.05), layout=layout.circle, vertex.size=1, vertex.label=NA)
# lots of rewiring
plot(watts.strogatz.game(1, 100, 5, 0.10), layout=layout.circle, vertex.size=1, vertex.label=NA)


########################################
# real networks
########################################

### washington dc road network 
# read in edge list
dc_edges <- read.table('dc_road_network.tsv', sep="\t", header=F, col.names=c('src','dst'))

# convert to igraph object
dc_graph <- graph(as.matrix(dc_edges), n=max(dc_edges), directed=T)

# plot hairball
# plot(dc_graph, vertex.size=1, vertex.label=NA)

# compute degree distribution
dc_degree_dist <- dc_edges %>%
  group_by(src) %>%
  summarize(degree=n()) %>%
  group_by(degree) %>%
  summarize(num_nodes=n())
qplot(x=degree, y=num_nodes, data=dc_degree_dist, geom="line", xlab="Degree", ylab="Number of nodes")

# plot distribution of path lengths
path_lengths <- path.length.hist(dc_graph)$res
qplot(x=1:length(path_lengths), y=path_lengths, xlab="Length of shortest path", ylab="Number of routes")

# compute mean path length
mean(1:length(path_lengths)*path_lengths/path_lengths)


### wikipedia voting network 
# read in edge list
wiki_edges <- read.table('wiki-Vote.txt', sep="\t", header=F, col.names=c('src','dst'))

wiki_graph <- graph(as.matrix(wiki_edges), n=max(wiki_edges), directed=T)

# compute degree distribution
wiki_degree_dist <- wiki_edges %>%
  group_by(src) %>%
  summarize(degree=n()) %>%
  group_by(degree) %>%
  summarize(num_nodes=n())
qplot(x=degree, y=num_nodes, data=wiki_degree_dist, geom="point", xlab="Degree", ylab="Number of nodes")

qplot(x=degree, y=num_nodes, data=wiki_degree_dist, geom="point", xlab="Degree", ylab="Number of nodes") + 
  scale_y_log10() +
  scale_x_log10()

# plot distribution of path lengths
path_lengths <- path.length.hist(wiki_graph)$res
qplot(x=1:length(path_lengths), y=path_lengths, xlab="Length of shortest path", ylab="Number of routes")

# compute mean path length
mean(1:length(path_lengths)*path_lengths/path_lengths)
