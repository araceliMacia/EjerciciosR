#Generar 10000 nu ́meros aleatorios con una distribuci ́on normal est ́andar (media 0 y varianza 1).
vectorR <- rnorm(1:1000,0,1)
# Realizar un histograma de los valores anteriores. ¿Cual es el menor y mayor valor generado?.
mxvalor<-max(vectorR)
minvalor<- min(vectorR)
hist(vectorR)

#Generar los valores de la distribucion normal teoricos en el intervalo anterior utilizando la funcion dnorm()
n <- seq(minvalor,mxvalor,length.out = 100)
vectorNorm <- dnorm(n,0,1)

#Al histograma anterior, superponer una curva con la funcion de densidad teorica calculada. ¿Se aproxima el histograma al valor teorico?
#lo añadoe
lines(n,vectorNorm )


#Ver el parametro probability de la funcion hist y volver a generar el histograma cambiando su valor. 
#¿Se aproxima ahora a la funcion de densidad teorica?.
hist(vectorR, probability = TRUE, border="red")
lines(n,vectorNorm )

