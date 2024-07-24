
#VECTOR 
#funcion c, combina mismos tipos
manzana <- c('roja','amarillo','verde')


#LISTA 
# varios tipos de dato
lis1 <- list(c(2,5,3),"dasda",32)

#MATRIZ
m=matrix(c('a','b','c','a','s','d'),nrow = 2,ncol = 3,byrow = TRUE)
print(m)

#ARREGLO (array)
arr <- array(c('a','e','i','o','u'),dim=c(3,3,2))
print(arr)
# arr[2,2,1]

#FACTORES
#valores unicos, caracter
maco <- c('green','yellow','red','blue','cyan','pink',
          'brown','black','white','orange','gray','darkblue',
          'green','yellow','red','blue')
factor_ma <- factor(maco)
print(factor_ma)
print(nlevels(factor_ma))

#DATA_FRAMES
# objeto tabular, cada columna diferentes datos 
df <- data.frame(
  gender=c('male','female','unknown'),
  height=c(153,187,164),
  weigth=c(71,57,89),
  age=c(25,21,30)
)
print(df)


#operaciones matriciales son punto a punto
j=c(1,5,3,6,3,1)
j2=2:7
print(6 %in% j2)
print(j*j2)
print(j/j2)
print(j**j2)

