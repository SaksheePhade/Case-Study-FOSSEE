# Finding the optimal parameter order for model prediction.
# Model definition
Model <- function(Country,Order) 
{ # Inputs
  m <- Order[1]
  n <- Order[2]
  p <- Order[3]
  q <- Order[4]
  m <- as.numeric(m)
  n <- as.numeric(n)
  p <- as.numeric(p)
  q <- as.numeric(q)
  # Model
  Garch <- suppressWarnings(ugarchspec(variance.model = list(garchOrder = c(m,n)), mean.model = list(armaOrder=c(p,q))))
  Fit <- suppressWarnings(ugarchfit(Garch, Country))
  # Results
  FV <- Fit@fit$fitted.values
  if(!is.null(FV)) {
    pred.error.sq <- (Country - FV)^2
    sum.pred.error.sq <- sum(pred.error.sq)
    return(sum.pred.error.sq)
  }
  else {
    return(NULL)
  }
  
}
# All possible input combinations.
List <- with(expand.grid(0:3,0:3,0:3,0:3), paste(Var1, Var2, Var3, Var4))
Combinations <- matrix(0L,nrow = length(List),ncol = 4)
for(i in 1:length(List))
{
  Combinations[i,] <- as.integer(unlist(strsplit(List[i]," ")))
}
# Removing unnecessary objects
rm(i,List)
try <- Model(Difference[,111], c(1,1,1,1))