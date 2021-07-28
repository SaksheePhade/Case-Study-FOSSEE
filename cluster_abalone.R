# clustering

library(ggplot2)
library(cluster)
library(factoextra)

ab <- read.csv('abalone.csv')
#View(wine)
str(ab)
summary(ab)
any(is.na(ab))
View(head(ab))

ggplot(ab, aes(Diameter, Shell.weight, color = Sex)) + geom_point()

ab$Sex <- NULL

ab.scale <- scale(ab[-1])
View(head(ab.scale))


fviz_nbclust(ab.scale, kmeans, method = 'wss') + geom_vline(xintercept = 4, linetype=5, col='darkred')

result <- kmeans(ab.scale, 3, nstart=10)
result
result$cluster <- as.factor(result$cluster)

ggplot(ab, aes(Diameter, Shell.weight, color = result$cluster))
