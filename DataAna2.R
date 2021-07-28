# ARCH Modelling for the square of difference. 
Arch1 <- function(country) {
  country <- na.omit(country)
  model <- quiet(garch(x = country,order = c(0,1),trace = F))
  summ <- summary(model)
  t <- as.data.frame(summ$coef[2,])
  col1 <- c(rownames(t), "Ljung-Box X-squared", "Ljung-Box p.value")
  col2 <- c(t[,1], as.numeric(summ$l.b.test$statistic)
            , as.numeric(summ$l.b.test$p.value))
  df <- data.frame("Coeff"=col1, "Value"=col2)
  colnames(df) <- c("Value")
  return(df)
}
# To stop the summarized output generated from function execution.
quiet <- function(x) {
  sink(tempfile()) 
  on.exit(sink()) 
  invisible(force(x)) 
} 
# Applying the function over the data.
imf <- lapply(na.omit(diff1.sq), Arch1)
oecd <- lapply(na.omit(diff2.sq), Arch1)