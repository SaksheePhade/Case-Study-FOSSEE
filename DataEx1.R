# Loading library " ggplot2 " for data visualization in R.
# Loading library " ggpubr " for combining the generated plots.
library(ggplot2)
library(ggpubr)
# Plot for Developed Countries
Developed <- ggarrange(Australia,Canada,USA,Germany,Switzerland,
                       ncol = 3,
                       nrow = 2,
                       common.legend = TRUE,
                       legend = "bottom")
Developed
# Plot for Developing Countries
Developing <- ggarrange(India,Brazil,South.Africa,Turkey,Mexico,
                        ncol = 3,
                        nrow = 2,
                        common.legend = TRUE,
                        legend = "bottom")
Developing
# Plot for under-developed Countries
Under.developed <- ggarrange(CAR,Venezuela,Mozambique,Niger,Sudan,
                             ncol = 3,
                             nrow = 2,
                             common.legend = TRUE,
                             legend = "bottom")
Under.developed