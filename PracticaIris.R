## Con el data frame iris (viene cargado en R).
## 1. ¿Como esta estructurado el data frame? (utilizar la  funciones str() y dim()).
str(iris) #Esta funcion es mas detalla, nos dice el numero de columnas, el numero de filas, y de cada una de las columnas, nos dice el tipo que es.
dim(iris) #Esta funcion nos dice el numero de filas y de columnas.
mi_iris <- iris # me voy a genarar una copia del data_frame 
## 2. ¿De qúe tipo es cada una de las variables del data frame?.
sapply(iris,class)

## 3. Utilizar la funcíon summary() para obtener un resumen de los estadisticos de las variables.
summary(mi_iris)
## 4. Comprobar con las funciones mean(), range(), que se obtienen los mismos valores.
mediaVal <- sapply(mi_iris[,1:4], mean)
print (mediaVal)
rangoVal <- sapply(mi_iris[,1:4], range)
print (rangoVal)
## 5. Cambia los valores de las variables Sepal.Length Sepal.Width de las 5 primeras observaciones por NA.
mi_iris[1:5,1:2] <- NA
head(mi_iris)
## 6. ¿Que pasa si usamos ahora las funciones mean(), range() con las variables Sepal.Length y Sepal.Width?
# Devuelven NA 
mean(mi_iris$Sepal.Length)
range(mi_iris$Sepal.Length)
mean(mi_iris$Sepal.Width )
range(mi_iris$Sepal.Width)

#¿Tiene el mismo problema la funcion summary()?
# No, no tiene ese problema.
# cambian los valores, pero no le afecta en el calculo.

summary(mi_iris) 

## 7. Ver la documentacion de mean(), range(), etc. ¿Que paraametro habria que cambiar para arreglar el problema anterior?.
mean(mi_iris$Sepal.Length, na.rm=TRUE)
range(mi_iris$Sepal.Length, na.rm=TRUE)

## 8. Visto lo anterior, ¿por que es importante codificar los missing values como NA y no como 0, por ejemplo?
#=>  Si lo ponemos como 0 lo tiene en cuenta para realizar las operaciones y desvirtua el resultado final

## 9. Eliminar los valores NA usando na.omit().
mi_iris<- na.omit(mi_iris)
head(mi_iris)
## 10. Calcular la media de la variable Petal.Length para cada uno de las distintas especies (Species). Pista: usar funcion tapply().
tapply(mi_iris$Petal.Length,mi_iris$Species,mean)

