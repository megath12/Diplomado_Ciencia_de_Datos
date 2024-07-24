set.seed(2018)
x1<-rnorm(100,10,2)
y1<-rnorm(100,5.5)*x1
x2<-rnorm(100,10,1)
y2<-rnorm(100,3.5)*x1

#hist(x1)
hist(x1, main="Histograma", ylab = "Frecuencia")
hist(rnorm(100,50,2))
hist(rpois(100,2.5))
hist(rgamma(100,2))
hist(rbeta(100,3,1))
hist(rweibull(100,1))

?distributions

stem(x1)
summary(x1)
boxplot(x1,xlab="valores",ylab="freq")
boxplot(x1,x2,names=c("x1","x2"))

z<-rpois(10,3)
barplot(z)

?barplot
print(VADeaths)

mp <- barplot(VADeaths) # default
tot <- colMeans(VADeaths)
text(mp, tot + 3, format(tot), xpd = TRUE, col = "blue")
barplot(VADeaths, beside = TRUE,
        col = c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk"),
        legend.text = rownames(VADeaths), ylim = c(0, 100))
title(main = "Death Rates in Virginia", font.main = 4)