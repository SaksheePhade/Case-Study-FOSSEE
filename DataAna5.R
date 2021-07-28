# Creates dataframe with optimum orders and mean square errors for every country.
orders_and_errors <- cbind(orders.all, smallest.pred.error)
clus <- kmeans(na.omit(orders_and_errors), 3, nstart = 25) # k-means clustering
na.index <- which(!is.na(smallest.pred.error)) # Stores indices of countries with 'NA' values.
na.index
clus$cluster
d <- as.data.frame(na.omit(smallest.pred.error))
# Cluster plot
ggplot(data = d, aes(x=colnames(na.omit(Difference[na.index])), y=na.omit(smallest.pred.error), color=clus$cluster)) + geom_point() + 
      scale_x_discrete(guide = guide_axis(n.dodge = 6)) + xlab("Countries") + ylab("Prediction errors") + + coord_flip()