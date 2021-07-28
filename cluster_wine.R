# clustering

wine <- read.csv('winedataset.csv')
#View(wine)
str(wine)
summary(wine)
any(is.na(wine))

knitr::kable(head(wine))

wine$X <- NULL
wine$Type <- NULL

wine.scale <- scale(wine[-1])
#View(wine.scale)



library(cluster)
library(factoextra)

fviz_nbclust(wine.scale, kmeans, method = 'wss') + geom_vline(xintercept = 4, linetype=5, col='darkred')

result <- kmeans(wine.scale, 3, nstart=25)
result

ggplot(ab, aes(Diameter, Shell.weight, color = result$cluster))