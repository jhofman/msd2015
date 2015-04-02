library(igraph)
library(ggplot2)
library(dplyr)

theme_set(theme_bw())

# read in edge list for washington dc road network
dc_edges <- read.table('DC_edge_list.tsv', sep="\t", header=F, col.names=c('src','dst'))

# convert to igraph object
dc_graph <- graph(as.matrix(dc_edges), n=max(dc_edges), directed=T)

# compute degree distribution
dc_degree_dist <- dc_edges %>%
  group_by(src) %>%
  summarize(degree=n()) %>%
  group_by(degree) %>%
  summarize(num_nodes=n())
qplot(x=degree, y=num_nodes, data=dc_degree_dist, geom="line")

# plot distribution of path lengths
path_lengths <- path.length.hist(dc_graph)$res
qplot(x=1:length(path_lengths), y=path_lengths)
