#Ejercicios 1

#Con el data frame mtcars (viene cargado en R).
#1. Previsualizar el contenido con la funcíon head().
head(mtcars)
#2. Mirar el número de filas y columnas con nrow() y ncol().
nrow(mtcars)
ncol(mtcars)
#3. Crear un nuevo data frame con los modelos de coche que consumen menos de 15 millas/gal ́on.
Car_menor15 <- mtcars[mtcars$mpg<15,]
print(Car_menor15)
#4. Ordenar el data frame anterior por disp.
Car_menor15 <- Car_menor15[order(Car_menor15$disp),]
print(Car_menor15)
#5. Calcular la media de las marchas (gear) de los modelos del data frame anterior.
mean(Car_menor15$gear)
#6. Cambiar los nombres de las variables del data frame a var1, var2, ..., var11.
#Pista: Mirar la documentacíon de la func ́on paste y usarla para generar el vector (“var1”, “var2”, ..., “varN
#”) donde N es el nu ́mero de variables del data frame.
names(Car_menor15) <- paste0(c("var"),1:ncol(Car_menor15))
print(Car_menor15)
