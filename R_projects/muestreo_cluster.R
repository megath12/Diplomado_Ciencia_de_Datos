
library(dplyr)
library(sampling)

print(data.frame(table(base_trabajadores$sucursal)))
set.seed(10)
cluster(base_trabajadores, clustername = c("sucursal"),
        size=3, method="srswor",description = T)


