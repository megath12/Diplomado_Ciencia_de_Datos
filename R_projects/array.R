#arreglos
x<-array(c(45,46,65,55,170,167,48,49,68,56,169,165),c(2,3,2))
dimnames(x)<-list(c("hombres","mujeres"),c("edad","peso","altura")
                  ,c("villarriba","villabajo"))
print(x)

o<-apply(x,1,mean)
print(c("promedio: ",o))

o2<-apply(x,2,mean)
print(c("promedio: ",o2))

o3<-apply(x,3,mean)
print(c("promedio: ",o3))


# MATRIZ 
familia<-list(padre="juan",madre="maria",numero.hijos=3,
        nombre.hijos=c("luis","carlos","eva"),edades.hijos=c(7,5,3),ciudad="lugo")
print(familia)
# nombres de objetos
print(names(familia))
# acceder a valores
print(familia$padre)
print(familia[[5]])



#DATA FRAMES


