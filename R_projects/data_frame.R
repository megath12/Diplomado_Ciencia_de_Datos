datos<-matrix(c(20,65,174,22,70,180,19,68,170),nrow=3,byrow=T)
dimnames(datos)<-list(c("paco","pepe","kiko"),c("edad","peso","altura"))
print(datos)

provincia<-c("madrid","malaga","murcia")
datos2<-cbind(datos,provincia)
print(datos2)
mode(datos)
mode(datos2)
# Los datos han sido convertidos a carácter

# usando data.frame ya podemos realizar operaiones
datos2<-data.frame(datos,provincia)
mode(datos2)   #datos son numericos

print(apply(datos2[,1:3],2,mean))
print(mean(datos2[,"edad"]))

print("cambio peso matriz")
print(datos2[,1])             # Acceso en modo matriz
print("cambio")
print(datos2[,"edad"])        # Acceso en modo matriz
print("cambio")
print(datos2$edad)            # Acceso en modo lista

print("provincia")
print(datos2[,4])
print(datos2[,"provincia"])
print(datos2$provincia)

# Si queremos utilizar las variables de un data frame por su nombre,
# sin hacer referencia a la matriz (por comodidad), 
# utilizaremos la función attach.

print(datos2[,"edad"])# De este modo se puede acceder

attach(datos2)# Permite acceder a los nombres de datos2 directamente
print(c("edades: ",edad))
detach(datos2)# Anula el acceso directo
edad          # Ya no se reconoce la variable directamente
