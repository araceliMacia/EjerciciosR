n <- 250
x <- sample(1:1000,n, replace=T)
y <- sample (1:1000, n, replace=T)
c <- x%%2
valores <- c[c==T]
length(valores)
# x <- sort(x)

y <- order(y)
y <- sort(y)
menores600 <- y[y<600]
n <- length(x)
x1 <- x[1:(n-2)]
x2 <- x[2:(n-1)]
x3 <- x[3:(n)]
oper <- c(x1+(2*x2)-x3)
#Operaciones con matrices
A <- matrix(1:20,nrow=4, ncol=5, byrow=T)
ex <- c(A[4,3],A[3,4],A[2,5])
A[4,3] <-0
A[3,4] <-0
A[2,5] <-0
print (A)
I <- diag(5)
print (I)
B <- rbind(A,1)
print (B)
inversa=solve(B)
print (inversa)
ej7<-(B%*%inversa)
print (ej7) 
abs(ej7)
resultado= 1/25*sum(abs(ej7))
print (resultado)
#Operaciones con dataframes
mtcars[mtcars[,"mpg"]>30,c("mpg","wt")]
mtcars[order(mtcars[,"mpg"]),] #aqui orden da los indices ordenados. No se puede usar la funcion sort.
mtcars[4:8,3:6] # las filas en este caso si que tienen un nombre identificativo
mtcars["Merc 240D", c("wt","hp")]
mtcars[mtcars[,"gear"]==4,]
mtcars[mtcars$gear==4,]
attach(mtcars) # esto sirve para poder atacar directamente a la columnas
mtcars[gear]
names(mtcars) #te da el nombre de la columnas, es un vector y podemos modificar los elementos.
