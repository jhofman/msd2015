library(igraph)
library(ggplot2)
library(dplyr)

theme_set(theme_bw())

### washington dc road network 
# read in edge list
dc_edges <- read.table('dc_road_network.tsv', sep="\t", header=F, col.names=c('src','dst'))

# convert to igraph object
dc_graph <- graph(as.matrix(dc_edges), n=max(dc_edges), directed=T)

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
