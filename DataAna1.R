# ACF
plotACF <- function(country, country.name) {
  country <- na.omit(country)
  Acf.var1 <- acf(country, lag.max = 20, type = "correlation", plot = FALSE)
  plot(Acf.var1, main = country.name)
}
# PACF
plotPACF <- function(country, country.name) {
  country <- na.omit(country)
  Pacf.var1 <- pacf(country, lag.max = 20, type = "correlation", plot = FALSE)
  plot(Pacf.var1, main = country.name)
}