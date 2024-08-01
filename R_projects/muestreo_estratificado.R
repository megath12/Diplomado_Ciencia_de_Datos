library(dplyr)
library(sampling)

set.seed(87)
#muestreo por semilla
base
#muestreo aleatorio estratificado no proporcional
print(data.frame(table(base$nivel_estudios)))
muestra_est<-strata(data = base, stratanames = c("nivel_estudios"),
                    size=c(3,5,4), method="srswor")
print(muestra_est)

#muestreo aleatorio estratificado proporcional
nrow(base)
n_superior<-sum(with(base,nivel_estudios=="Superior"))/nrow(base)
n_basico<-sum(with(base,nivel_estudios=="Básico"))/nrow(base)
n_mediosuperior<-sum(with(base,nivel_estudios=="Medio Superior"))/nrow(base)
muestra_est_p<-strata(data = base, stratanames = c("nivel_estudios"),
                      size=c(round(12*n_superior), round(12*n_basico), round(12*n_mediosuperior)), method="srswor")
print(muestra_est_p)
print(data.frame(table(muestra_est_p$nivel_estudios)))
