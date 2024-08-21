library(readxl)
preciopm <- read_excel("C:/Users/megat/Music/Cursos/Diplomado Ciencia_Datos/Modulo2/preciopm.xls")
View(preciopm)


attach(petroleo1)
names(petroleo1)
petroleo<-petroleo1
library(tidyverse)
library(lubridate)
petro.ts<-ts(petroleo,start=2013,frequency=12)
print(petro.ts)
plot(petro.ts)
precio.ts<-ts(petro.ts[,1],start=2013,frequency=12)
plot(precio.ts)
expor.ts<-ts(petro.ts[,2],start=2013,frequency=12)
plot(expor.ts)
