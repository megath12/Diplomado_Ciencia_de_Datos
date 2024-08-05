
# altura en cm
x<-c(158,176,197,167,155,188,178,150,166,177,188,199)

# peso kg
y<-c(62,67,107,79,59,94,79,77,54,77,91,104)

# funcion linear models

relacionz<-lm(y~x)
print(relacionz)
print(summary(relacionz))

nda<-data.frame(x=200)
res<-predict(relacionz,nda)
print(res)

png(file="regression.png")
plot(y,x,col="blue", main = "Regresion lineal",
     abline(lm(x~y)),cex=1.3,pch=16,xlab="peso[kg]",
     ylab = "Altura[cm]")
#abline linea nueva, cex ancho y pch pixeles
dev.off()
