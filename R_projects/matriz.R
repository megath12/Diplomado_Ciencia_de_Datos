# genero una matriz
lk<- matrix(c(1,2,3,4,5,6),nrow=2,ncol=,byrow = TRUE)
print(lk)
#dimension
print(dim(lk))
#tipo de dato
print(mode(lk))
#numero de elementos
print(length(lk))
# es matriz?
print(is.matrix(lk))
#acceder al valor de x posicion
print(lk[1,3])
#agregar columna
lk1<-cbind(lk,0:1)
print(lk1)
#agregar fila
lk2<-rbind(lk,0:2)
print(lk2)
#agregar nombre columan
colnames(lk2)<-c("dia","mes","hora")
#agregar nombre fila
rownames(lk2)<- c("lunes","martes","miercoles")
print(lk2)
#agregar nombre fila y columna
dimnames(lk1)<-list(c("uno","dos"),c("tres","seis","ocho","once"))
print(lk1)
print("   ")
