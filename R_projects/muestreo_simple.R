library(dplyr)
library(sampling)

set.seed(5)
#muestreo por semilla
base
muestra<-slice_sample(.data = base, n=8 , replace = F)
#extrae 8 mustras de mi d_b
print(muestra)


