b<-c(3,4,5,6,12,12)
print("suma")
print(sum(b))
print("media")
print(mean(b))
print("mediana")
print(median(b))

#medidas de dispersion
print("varianza")
print(var(b)) #varianza
print("desvacion estandar")
print(sd(b)) #desviacion estandar 
print("moda")
#print(Mode(b))
print(names(sort(-table(b)))[1])
#install.packages("DescTools")

x<-matrix(1:9,3,3)
print(x)
print(rowMeans(x))
print(colMeans(x))
print(rowMeans(x))

# cuartiles
res<- quantile(b, probs = c(0, .25, .5, .75, 1))
print(res)
res<- quantile(b, probs = c(0.33, 0.66))
print(res)


# Genera números aleatorios de una distribución normal.
y<-rnorm(100)

png(file="fig4.png")
hist(y,main="dist.normal",prob=TRUE)
curve(dnorm(x,mean=mean(y),sd=sd(y)),add = TRUE, col="cyan")
abline(v=quantile(y,.25),col="green",lwd=3)
abline(v=quantile(y,.5),col="magenta",lwd=3)
abline(v=quantile(y,.75),col="green",lwd=3)

dev.off()



