rm(list = ls())
ls()

# Instalação do rmarkdown
install.packages('rmarkdown')
library(rmarkdown)
install.packages('plotly')
library(plotly)

# Or if you want to test the development version,
# install from GitHub
if (!requireNamespace("devtools"))
  install.packages('devtools')
devtools::install_github('rstudio/rmarkdown')

# instalar pacotes para abaixar PDF 
install.packages('tinytex')
tinytex::install_tinytex()

title: "procedimentos ingestão e manipulação tif"
author: "Fulbert K. J. Gnonlonfoun"
date: "06/08/2019"
output: html_document

names(knitr::knit_engines$get())


