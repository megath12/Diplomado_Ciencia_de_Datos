
# Simple smoothing Exponencial

# Method Naive, 
# Method Averge
        # Method Averge
        # Method Moving Avegrage 
# Method Hot Linear 
        # Exponential moving average

library(ggplot2)
library(forecast)
library(fpp)
library(tseries)

attach(preciopm)
petro.ts<-ts(preciopm,start = c(1990,1),frequency = 12)

plot(petro.ts)
autoplot(petro.ts)+ylab("Oil tons")+xlab("year") +labs(title="Oil Production")

plot(decompose(petro.ts))
adf.test(petro.ts)
plot(diff(petro.ts))
adf.test(diff(petro.ts))


# FUNCION SES

fc<-ses(petro.ts,h=5)
fc$model
fc$fitted

#forecat an dCI
autoplot(fc)+autolayer(fitted(fc), series="Fitted")+ylab("Oil tons")+xlab("year") +labs(title="Oil Production")

accuracy(fc)

# Holt winters
myho<-HoltWinters(petro.ts, beta=F, gamma=F)
myho
zx<-myho$fitted

#modelo
autoplot(zx, main="Holt winters expo smoothing for oil data")+autolayer(petro.ts)

#forecast
mnb<-forecast(myho, h=5, findfrequency=T)
plot(mnb)

autoplot(mnb, main="Holt winters expo smoothing for oil data")+autolayer(petro.ts)


