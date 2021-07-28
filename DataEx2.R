# Loading library " dplyr " for data manipulation in R.
library(dplyr)
# Data reformatting for difference of actual and predicted data.
actualNew <- as.data.frame(actual)
actualNew$Central.African.Republic <- NULL
actualNew$Venezuela <- NULL
actualNew$Sudan <- NULL
actualNew$Niger <- NULL
actualNew$Mozambique <- NULL
actualNew$Years <- NULL
predict1New <- as.data.frame(predict1)
predict1New <- select(predict1New, Australia, Canada, United.States, India, Germany, Switzerland, Brazil, South.Africa, Turkey, Mexico, Central.African.Republic
                      , Venezuela, Mozambique, Niger, Sudan)
actual$Years <- NULL
predict1New <- as.data.frame(predict1New)
predict1New <- predict1New[-c(40, 41, 42), ]
# Obtaining the difference.
difference1 = predict1New - actual
row.names(difference1) <- seq(1980,2018)
difference2 = val - actualNew
Yr <- seq(1980,2018)
# Square of differences
diff1.sq <- difference1^2 # IMF
diff2.sq <- difference2^2 # OECD
# Built-in function to plot the square of differences.
plotCountry <- function(country, difference, countryName) {
  Yr <- seq(1980, 2018)
  plotvar <- ggplot() + geom_line(data = difference, aes(x = Yr, y = as.numeric(as.matrix(country)), color="Red"), size = 1) +
    ggtitle(countryName) + labs(x = " ", y = " ")
  return(plotvar)}
# Arranging the plots for IMF.
Diff.compare <- ggarrange(Australia, India, CAR, Canada, Brazil, Venezuela,  USA, South.Africa, Mozambique, Germany, Turkey, Niger, Switzerland, Mexico,  
                          Sudan,nrow = 5, ncol = 3, common.legend = TRUE, align = "v") 
# Graph aesthetics.
annotate_figure(Diff.compare,
                bottom = text_grob("Years"),
                left = text_grob("Difference", rot = 90),
                fig.lab = "Comparison of differences - IMF",)
# Arranging the plots for IMF.
Diff.compare <- ggarrange(Australia, India, Canada, Brazil,  USA, South.Africa, Germany, Turkey, Switzerland, Mexico,  
                          nrow = 5, ncol = 2, common.legend = TRUE, align = "v") 
# Graph aesthetics.
annotate_figure(Diff.compare,
                bottom = text_grob("Years"),
                left = text_grob("Difference", rot = 90),
                fig.lab = "Comparison of differences -  OECD",)