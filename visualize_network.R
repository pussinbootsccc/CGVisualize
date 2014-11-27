library(igraph)

X <- read.table("data/caltech.txt")
G = graph.data.frame(X, directed = T)
V(G)$label.cex <- 0.4
V(G)$size <- 4.5
V(G)$color <- rgb(0.11, 0.5, 0.7, 0.4)#0.5, 0.338, 0.106
V(G)$label.color <- rgb(0.1, 0.1, 0.1, 0.8)
V(G)$frame.color <- rgb(0.1, 0.1, 0.1, 0.4)
E(G)$weight = X$V3

plot (G,
      main = 'Concept Graph of Caltech',
      layout = layout.sphere,
      edge.color = rgb(0.2, 0.2, 0.2, 0.5),
      edge.curved = F,
      edge.arrow.width=0.4,
      edge.arrow.size = 0.3,
      edge.width=500*(E(G)$weight)**0.5,
      vertex.label.family = "Monaco",
      #vertex.label.dist = 0.2,
  )
  mtext("Visualized by Yujie", 4, adj = 1, cex = 0.5, family="Monaco")
