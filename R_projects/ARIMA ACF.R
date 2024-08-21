
n<-100
sd<-10

d1<-arima.sim(model=list(ma=0.8), n=n, sd=sd)
d2<-arima.sim(model=list(ma=c(0.8, 0.7)), n=n, sd=sd)

plot(d1, main="Data 1")
plot(d2, main="Data 2")


#autocorrelation plot

acf(d1, main="ACF Data 1")

write.csv(d1, "d1.csv")

#  x(t) = mu +  v(t) +  b_1*v(t-1) 
#modelo = media + error+ coef*error(lag 1)

acf(d2, main="ACF Data 2")

#  x(t) = mu +  v(t) +  b_1*v(t-1) + b2*v(t-2)
# moving average

print("Datos 1")
print(mean(d1))
print(sd(d1))

print("Datos 2")
print(mean(d2))
print(sd(d2))

# ajustano el modelo
ma1<- arima(d1, order=c(0,0,1))
ma1

predict(ma1, n.ahead = 10)
# primer valor de los resultados, es el valor prediccion

