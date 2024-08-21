
#importar datos
input<-read.delim("https://www4.stat.ncsu.edu/~boos/var.select/diabetes.tab.txt",
                  header=TRUE, dec=".")

#creamos el modelo
model<-lm(input$Y~input$AGE+input$SEX+input$BMI+input$BP,data=input)
cat("### MODELO ###","\n")
print(summary(model))

coeff.intercept<-coef(model)[1]
coeff.age<-coef(model)[2]
coeff.sex<-coef(model)[3]
coeff.bmi<-coef(model)[4]
coeff.glu<-coef(model)[5]

#crear nuevas predicciones, creamos dataframes
AGE<-c(0.02,0.05)
SEX<-c(-0.044, 0.05)
BMI<-c(-0.044, 0.05)
BP<-c(-0.096,-0.046)

new_data<-data.frame(AGE,SEX,BMI,BP)
resultado=predict(model,new_data)
cat("----------Prediccion-------")
print(resultado)

