
#Obtaining country names in eac cluster
indices3 <- which(clus_vect==3)
indices2 <- which(clus_vect==2)
indices1 <- which(clus_vect==1)

most.error <- rownames(orders_and_errors[indices1,])
mean.most <- mean(orders_and_errors[indices1,5])
medium.error <- rownames(orders_and_errors[indices3,])
mean.medium <- mean(orders_and_errors[indices3,5])
least.error <- rownames(orders_and_errors[indices2,])
mean.least <- mean(orders_and_errors[indices2,5])
