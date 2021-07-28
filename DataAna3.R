# Tabulation of values obtained of ARCH fitting over IMF data
tt1 <- ttheme_default()
grid.arrange( tableGrob(archAus1, theme=tt1), tableGrob(archCan1, theme=tt1), tableGrob(archUSA1, theme=tt1),
              tableGrob(archGerman1, theme=tt1), tableGrob(archSwiss1, theme=tt1), tableGrob(archInd1, theme=tt1),
              tableGrob(archSA1, theme=tt1), tableGrob(archBra1, theme=tt1), tableGrob(archTur1, theme=tt1),
              tableGrob(archMex1, theme=tt1), tableGrob(archCAR1, theme=tt1), tableGrob(archVen1, theme=tt1),
              tableGrob(archMoz1, theme=tt1), tableGrob(archNig1, theme=tt1), tableGrob(archSud1, theme=tt1),
              nrow=5, ncol=3, top="IMF")
# Tabulation of values obtained of ARCH fitting over OECD data
tt1 <- ttheme_default()
grid.arrange( tableGrob(archAus2, theme=tt1), tableGrob(archCan2, theme=tt1), tableGrob(archUSA2, theme=tt1),
              tableGrob(archGerman2, theme=tt1), tableGrob(archSwiss2, theme=tt1), tableGrob(archInd2, theme=tt1),
              tableGrob(archSA2, theme=tt1), tableGrob(archBra2, theme=tt1), tableGrob(archTur2, theme=tt1),
              tableGrob(archMex2, theme=tt1), 
              nrow=5, ncol=2, top="OECD")
