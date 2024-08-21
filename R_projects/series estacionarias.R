library(tseries)    #librerias ts
library(lubridate)
library(tidyverse)
library(car)
library(astsa)
library(foreign)
library(timsac)
library(vars)
library(lmtest)
library(mFilter)
library(dynlm)
library(nlme)
library(lmtest)
library(broom)
library(kableExtra)
library(knitr)
library(MASS)
library(parallel)
library(car)
library(mlogit)
library(dplyr)
library(tidyr)
library(forecast)
library(fpp2)
library(stats)
library(quantmod)

attach(preciopm)
names(preciopm)
petro.ts<-ts(preciopm,start = c(1990,1),frequency = 12)
start(petro.ts);end(petro.ts) #confirmar primer y ultimo
petro.ts
class(petro.ts)
plot(petro.ts,ylab="Precio", main="Precio petrleo Mexico")

seasonplot(petro.ts, col=rainbow(12), year.labels=T)

#funcion auocrrelaion
acf(petro.ts)

#ndiffs(petro.ts)

#usar diferenciacion (primera dif de precio)
seriedif<-diff(petro.ts)
plot(seriedif)
acf(seriedif)
ndiffs(seriedif) #saber cuantas diferencias requieres para sea estacionaria

#analisis visual de las graficas autocorrelacion
par(mfrow=c(2,2),mar=c(4,4,4,1)+0.1) 
plot(petro.ts,ylab="Precio")
acf(petro.ts,main="serie no estacionaria")
plot(seriedif)
acf(seriedif,"serie estacionaria")



