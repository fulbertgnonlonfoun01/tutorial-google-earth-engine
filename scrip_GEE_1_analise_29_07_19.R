rm(list = ls())
ls()

# caregar os pacotes
library(ggplot2)
library(ggthemr)  # to set a custom theme
library(forcats)  # to reorder categorical variables


#activar o ggthemr
ggthemr('dust', type = "outer", layout = "minimal")


# 


setwd("D:/fulbert/02_Rstudio/Iniciaçao_r/00_Script")

NP_forest_gain <- read.csv("NP_forest_gain.csv")
NP_forest_loss <- read.csv("NP_forest_loss.csv")


# Create identifier column for gain vs loss
NP_forest_gain$type <- "Gain"
NP_forest_loss$type <- "Loss"

# Bind the objects together
forest_change <- rbind(NP_forest_gain, NP_forest_loss)



(forest_barplot <- ggplot(forest_change, aes(x = NAME, y = sum/GIS_AREA, 
                                             colour = fct_rev(type), 
                                             fill = fct_rev(type))) +
    geom_bar(stat = "identity", position = "dodge") +
    labs(x = NULL, y = "Mudanças florestais(% da area dos parques)\n") +
    # Expanding the scale removes the emtpy space below the bars
    scale_y_continuous(expand = c(0, 0)) +
    theme(text = element_text(size = 12),  # makes font size larger
          legend.position = c(0.1, 0.85),  # changes the placement of the legend
          legend.title = element_blank(),  # gets rid of the legend title
          legend.background = element_rect(color = "black", 
                                           fill = "transparent",   # removes the white background behind the legend
                                           linetype = "blank")))


ggsave(forest_barplot, filename = "forestas_barplot.png",
       height = 5, width = 7)

