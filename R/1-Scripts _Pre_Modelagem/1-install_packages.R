###################################
# Script de instalação dos pacotes 
# R version 4.1.1
##################################

## Usamos o seguinte comando para a instalação dos pacotes que estão no CRAN do R (faça isso caso estes pacotes NÃO ESTEJAM INSTALADOS). 
## Obs.: A instalação só precisa ser feita uma vez. 

install.packages("raster")
install.packages("sp")
install.packages("devtools")
install.packages("remotes")
install.packages("rgdal")
install.packages("maptools")
remotes::install_github("marlonecobos/kuenm")


## Carregando pacotes necessários para instalação.
#  Cada vez que q uma sessão de R é iniciada, é preciso carregar Os pacotes que serão usados, como abaixo:

library(remotes)
library(devtools)

## Instalação modleR

#o modleR ainda não está no CRAN do R, nesse caso a instalação é  diferente

# Instalação com vinhetas (exemplos do pacote). Recomendada* (mais de 8G RAM)
remotes::install_github("Model-R/modleR",
                        build = TRUE,
                        dependencies = TRUE,
                        build_opts = c("--no-resave-data", "--no-manual"),
                        build_vignettes = TRUE)

#ou#

# Instalação sem vinheta (sem os exemplos)

