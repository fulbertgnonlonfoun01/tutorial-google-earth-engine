# Intro to spatial analysis tutorial
# analise de dados de GEE

# Fulbert Gnonlonfoun fulbertgnlonfoun@gmail,com
# 10/08/2019
##############################################################

rm(list = ls())
ls()


# install.packages("sp")
install.packages("sp")
install.packages("rgdal")
install.packages("raster")
install.packages("viridis")
install.packages("rasterVis")

# If you haven't installed the packages before, use e.g.:
# install.packages("sp")
# Load packages
library(sp)
library(rgdal)
library(raster)
library(ggplot2)
library(viridis)
library(rasterVis)

# Set the working directory (example, replace with your own file path)
setwd("D:/fulbert/02_Rstudio/Iniciaçao_r/00_Script")

# loss 1
Parques_loss1 <- raster('ParquesLoss_1.tif')

Parques_loss1

image(Parques_loss1, 
      main="Boucle de la penjari",
      sub="Loss",
      xlab = "Latitude",
      ylab = "Longitude",
      col.main="black", col.lab="black", col.sub="black",
      cex.main=1.6, cex.lab=1.2, cex.sub=1.4)

plot(Parques_loss1,
     main="Penjari_Perda_img_sentinel2",
     sub="Loss",
     xlab = "Meses do ano",
     ylab = "Intensidade das perdas",
     col.main="black", col.lab="black", col.sub="black",
     cex.main=1.6, cex.lab=1.2, cex.sub=1.4)


# Set the working directory (example, replace with your own file path)

#loss2
Parques_loss2 <- raster('ParquesLoss_2.tif')

Parques_loss2

image(Parques_loss2, 
      main="Kambari",
      sub="Loss",
      xlab = "Latitude",
      ylab = "Longitude",
      col.main="black", col.lab="black", col.sub="black",
      cex.main=1.6, cex.lab=1.2, cex.sub=1.4)

plot(Parques_loss2,
     main="Kambari_Perda_img_sentinel2",
     sub="Loss",
     xlab = "Meses do ano",
     ylab = "Intensidade das perdas",
     col.main="black", col.lab="black", col.sub="black",
     cex.main=1.6, cex.lab=1.2, cex.sub=1.4)



# Set the working directory (example, replace with your own file path)
# loss 3 
Parques_loss3 <- raster('ParquesLoss_3.tif')

Parques_loss3

image(Parques_loss3, 
      main="Kashimbila",
      sub="Loss",
      xlab = "Latitude",
      ylab = "Longitude",
      col.main="black", col.lab="black", col.sub="black",
      cex.main=1.6, cex.lab=1.2, cex.sub=1.4)

plot(Parques_loss3,
     main="Kashimbila_Perda_img_sentinel2",
     sub="Loss",
     xlab = "Meses do ano",
     ylab = "Intensidade das perdas",
     col.main="black", col.lab="black", col.sub="black",
     cex.main=1.6, cex.lab=1.2, cex.sub=1.4)



# Set the working directory (example, replace with your own file path)

# loss 4
Parques_loss4 <- raster('ParquesLoss_4.tif')

Parques_loss4

image(Parques_loss4, 
      main="Parque W",
      sub="Loss",
      xlab = "Latitude",
      ylab = "Longitude",
      col.main="black", col.lab="black", col.sub="black",
      cex.main=1.6, cex.lab=1.2, cex.sub=1.4)

plot(Parques_loss4,
     main="ParqueW_Perda_img_sentinel2",
     sub="Loss",
     xlab = "Meses do ano",
     ylab = "Intensidade das perdas",
     col.main="black", col.lab="black", col.sub="black",
     cex.main=1.6, cex.lab=1.2, cex.sub=1.4)




# - -----------------------------------------------------------------------

#  Gain 1


Parques_Gain1 <- raster('ParquesGain_1.tif')

Parques_Gain1

image(Parques_Gain1, 
      main="Boucle de la penjari",
      sub="Gain",
      xlab = "Latitude",
      ylab = "Longitude",
      col.main="black", col.lab="black", col.sub="black",
      cex.main=1.6, cex.lab=1.2, cex.sub=1.4)

plot(Parques_Gain1,
     main="Penjari_Ganho_img_sentinel2",
     sub="Gain",
     xlab = "Meses do ano",
     ylab = "Intensidade de ganho",
     col.main="black", col.lab="black", col.sub="black",
     cex.main=1.6, cex.lab=1.2, cex.sub=1.4)

#  Gain 2
Parques_Gain2 <- raster('ParquesGain_2.tif')

Parques_Gain2

image(Parques_Gain2, 
      main="Kambari",
      sub="Gain",
      xlab = "Latitude",
      ylab = "Longitude",
      col.main="black", col.lab="black", col.sub="black",
      cex.main=1.6, cex.lab=1.2, cex.sub=1.4)

plot(Parques_Gain2,
     main="Kambari_Ganho_img_sentinel2",
     sub="Gain",
     xlab = "Meses do ano",
     ylab = "Intensidade de ganho",
     col.main="black", col.lab="black", col.sub="black",
     cex.main=1.6, cex.lab=1.2, cex.sub=1.4)

# Gain 3
Parques_Gain3 <- raster('ParquesGain_3.tif')

Parques_Gain3

image(Parques_Gain3, 
      main="Kashimbila",
      sub="Gain",
      xlab = "Latitude",
      ylab = "Longitude",
      col.main="black", col.lab="black", col.sub="black",
      cex.main=1.6, cex.lab=1.2, cex.sub=1.4)

plot(Parques_Gain3,
     main="Kashimbila_Ganho_img_sentinel2",
     sub="Gain",
     xlab = "Meses do ano",
     ylab = "Intensidade de ganho",
     col.main="black", col.lab="black", col.sub="black",
     cex.main=1.6, cex.lab=1.2, cex.sub=1.4)


#gain 4

Parques_Gain4 <- raster('ParquesGain_4.tif')

Parques_Gain4

image(Parques_Gain4, 
      main="Parque W",
      sub="Gain",
      xlab = "Latitude",
      ylab = "Longitude",
      col.main="black", col.lab="black", col.sub="black",
      cex.main=1.6, cex.lab=1.2, cex.sub=1.4)

plot(Parques_Gain4,
     main="Parque_W_Ganho_img_sentinel2",
     sub="Gain",
     xlab = "Meses do ano",
     ylab = "Intensidade de ganho",
     col.main="black", col.lab="black", col.sub="black",
     cex.main=1.6, cex.lab=1.2, cex.sub=1.4)
