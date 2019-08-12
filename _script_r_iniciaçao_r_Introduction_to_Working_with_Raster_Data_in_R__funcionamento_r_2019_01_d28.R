####  Introduçao de trabolho com Dados Raster em R ####
### Fulbert Gnonlonfou; Fulbertgnonlonfoun@gmail.com ###
### 28/01/2019 ###
#___________________________________________________________________________________________________________________________________________________#

## Este SCRIPT tem como objectivo de:
## Saiber como plotar uma única faixa raster em R.
## Saiber como sobrepor um conjunto de dados raster no topo de uma colina para criar um mapa base elegante.

# Packages raster, rgdal
install.packages("raster")
install.packages("rgdal")

# library para caregar os packages
library(raster)
library(rgdal)

# old.packages() para ver quais packages quem estao instalado no R
old.packages()


# update.packages() atualizar tudos os packages 
update.packages()

# directorio Ctrl + shift + h 
setwd("C:/Rstudio/Iniciaçao_r/01_Dados/NEON-DS-Airborne-Remote-Sensing")


# caregar o Raster no R
DSM_HARV <- raster("C:/Rstudio/Iniciaçao_r/01_Dados/NEON-DS-Airborne-Remote-Sensing/HARV/DSM/HARV_dsmCrop.tif")

# Chamar o Raster
DSM_HARV

# Plotar o raster objecto
plot(DSM_HARV,
     main="Digital Surface Model\nNEON Harvard Forest Field Site")

#  Plotar a distribution do valores do raster 
DSMhist<-hist(DSM_HARV,
              breaks=3,
              main="Histogram Digital Surface Model\n NEON Harvard Forest Field Site",
              col="red",  # changes bin color
              xlab= "Elevation (m)")  # label the x-axis

# ver os tipo de projeçao 
crs(DSM_HARV)

# assign crs to an object (class) to use for reprojection and other tasks
myCRS <- crs(DSM_HARV)
myCRS


# valor minimo 
minValue(DSM_HARV)


# valor maximo
maxValue(DSM_HARV)


# 
hist(DSM_HARV,
     main="Distribution of Digital Surface Model Values\n Histogram Default: 100,000 pixels\n NEON Harvard Forest",
     xlab="DSM Elevation Value (m)",
     ylab="Frequency",
     col="wheat")
