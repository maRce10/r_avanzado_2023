## Ejercicio 4

# 4.1 Cree una funcion que calcule el promedio, la desviación estándar y el error estándar de un vector numérico. Estos valores deben ser devueltos como una lista con nombres.

prom_fun <- function(x){
  
  prom <- mean(x)
  des_est <- sd(x)
  err_est <- sd(x) / sqrt(length(x))
  
  resultado <-
    list(
      promedio = prom,
      desviacion_estandar = des_est,
      error_estandar = err_est
    )
  
  return(resultado)
  }

prom_fun(x = 1:8)

# 4.2 Permita a los usuarios ignorar los `NAs` (similar al argumento `na.rm` en `mean()`, pista: añada un argumento lógico)

prom_fun <- function(x, na.rm = FALSE){
  
  if (na.rm)
    x <- x[!is.na(x)]
  
  prom <- mean(x)
  des_est <- sd(x)
  err_est <- sd(x) / sqrt(length(x))
  
  resultado <-
    list(
      promedio = prom,
      desviacion_estandar = des_est,
      error_estandar = err_est
    )
  
  return(resultado)
}

prom_fun(x = c(1:8, NA), na.rm = FALSE)

prom_fun(x = c(1:8, NA), na.rm = TRUE)

# 4.3 Haga que la función además produzca un histograma del vector numérico proporcionado por el usuario

prom_fun <- function(x, na.rm = FALSE){
  
  if (na.rm)
    x <- x[!is.na(x)]
  
  prom <- mean(x)
  des_est <- sd(x)
  err_est <- sd(x) / sqrt(length(x))
  
  resultado <-
    list(
      promedio = prom,
      desviacion_estandar = des_est,
      error_estandar = err_est
    )
  
  hist(x)
  return(resultado)
}

prom_fun(x = c(rnorm(100), NA), na.rm = TRUE)

# 4.4 Haga que la función escoja un color al azar para las barras del histograma cada vez que se corre (pista: `sample(vector.de.colores, 1)`)

prom_fun <- function(x, na.rm = FALSE){
  
  if (na.rm)
    x <- x[!is.na(x)]
  
  prom <- mean(x)
  des_est <- sd(x)
  err_est <- sd(x) / sqrt(length(x))
  
  resultado <-
    list(
      promedio = prom,
      desviacion_estandar = des_est,
      error_estandar = err_est
    )
  
  vector_colores <- c("green", "blue", "white", "red", "orange")
  
  hist(x, col = sample(vector_colores, 1))
  
  return(resultado)
}

prom_fun(x = c(rnorm(100), NA), na.rm = TRUE)
prom_fun(x = c(rnorm(100), NA), na.rm = TRUE)
prom_fun(x = c(rnorm(100), NA), na.rm = TRUE)

# 4.5 Añada un argumento a la función que permita el usuario, si lo desea, calcular la sumatoria (`sum()`) junto con el resto de los descriptores estadísticos

prom_fun <- function(x, na.rm = FALSE, suma = FALSE){
  
  if (na.rm)
    x <- x[!is.na(x)]
  
  prom <- mean(x)
  des_est <- sd(x)
  err_est <- sd(x) / sqrt(length(x))
  
  resultado <-
    list(
      promedio = prom,
      desviacion_estandar = des_est,
      error_estandar = err_est
    )
  
  if (suma)
    resultado$sumatoria <- sum(x)
  
  vector_colores <- c("green", "blue", "white", "red", "orange")
  
  hist(x, col = sample(vector_colores, 1))
  
  return(resultado)
}

prom_fun(x = c(rnorm(100), NA), na.rm = TRUE, suma = FALSE)
prom_fun(x = c(rnorm(100), NA), na.rm = TRUE, suma = TRUE)


# 4.6 Agregue el promedio y la desviación estándar al título del histograma (pista: use `paste()`)

prom_fun <- function(x, na.rm = FALSE, suma = FALSE){
  
  if (na.rm)
    x <- x[!is.na(x)]
  
  prom <- mean(x)
  des_est <- sd(x)
  err_est <- sd(x) / sqrt(length(x))
  
  resultado <-
    list(
      promedio = prom,
      desviacion_estandar = des_est,
      error_estandar = err_est
    )
  
  if (suma)
    resultado$sumatoria <- sum(x)
  
  vector_colores <- c("green", "blue", "white", "red", "orange")
  
  hist(x, col = sample(vector_colores, 1), main = paste("promedio:", round(prom, 2), "; desv.est:", round(des_est, 2)))
  
  return(resultado)
}

prom_fun(x = c(rnorm(100), NA), na.rm = TRUE, suma = TRUE)


# 4.7 Modifique la función para que también cree una linea vertical indicando el promedio del vector numérico proporcionado por el usuario

prom_fun <- function(x, na.rm = FALSE, suma = FALSE){
  
  if (na.rm)
    x <- x[!is.na(x)]
  
  prom <- mean(x)
  des_est <- sd(x)
  err_est <- sd(x) / sqrt(length(x))
  
  resultado <-
    list(
      promedio = prom,
      desviacion_estandar = des_est,
      error_estandar = err_est
    )
  
  if (suma)
    resultado$sumatoria <- sum(x)
  
  vector_colores <- c("green", "blue", "white", "red", "orange")
  
  hist(x, col = sample(vector_colores, 1), main = paste("promedio:", round(prom, 2), "; desv.est:", round(des_est, 2)))
  
  abline(v = prom, lty = 2, lwd = 3)
  
  return(resultado)
}

prom_fun(x = c(rnorm(100), NA), na.rm = TRUE, suma = TRUE)


# 4.8 Modifique la función para que añada un polígono transparente sobre el área que cubre el promedio +/- la desviación estándar

prom_fun <- function(x, na.rm = FALSE, suma = FALSE){
  
  if (na.rm)
    x <- x[!is.na(x)]
  
  prom <- mean(x)
  des_est <- sd(x)
  err_est <- sd(x) / sqrt(length(x))
  
  resultado <-
    list(
      promedio = prom,
      desviacion_estandar = des_est,
      error_estandar = err_est
    )
  
  if (suma)
    resultado$sumatoria <- sum(x)
  
  vector_colores <- c("green", "blue", "white", "red", "orange")
  
  hist(x, col = sample(vector_colores, 1), main = paste("promedio:", round(prom, 2), "; desv.est:", round(des_est, 2)))
  
  abline(v = prom, lty = 2, lwd = 3)
  
  rect(xleft = prom - des_est, xright = prom + des_est, ybottom = -100, ytop = 100, col = adjustcolor("gray", alpha.f = 0.3))
  
  return(resultado)
}

prom_fun(x = c(rnorm(100), NA), na.rm = TRUE, suma = TRUE)


# 4.9 Modifique la función con un argumento lógico que permita al usuario controlar si se crea un gráfico o no

prom_fun <- function(x, na.rm = FALSE, suma = FALSE, plot = TRUE){
  
  if (na.rm)
    x <- x[!is.na(x)]
  
  prom <- mean(x)
  des_est <- sd(x)
  err_est <- sd(x) / sqrt(length(x))
  
  resultado <-
    list(
      promedio = prom,
      desviacion_estandar = des_est,
      error_estandar = err_est
    )
  
  if (suma)
    resultado$sumatoria <- sum(x)
  
  if (plot)
{  vector_colores <- c("green", "blue", "white", "red", "orange")
  
  hist(x, col = sample(vector_colores, 1), main = paste("promedio:", round(prom, 2), "; desv.est:", round(des_est, 2)))
  
  abline(v = prom, lty = 2, lwd = 3)
  
  rect(xleft = prom - des_est, xright = prom + des_est, ybottom = -100, ytop = 100, col = adjustcolor("gray", alpha.f = 0.3))
  }
  
  return(resultado)
}

prom_fun(x = c(rnorm(100), NA), na.rm = TRUE, suma = TRUE, plot = TRUE)

prom_fun(x = c(rnorm(100), NA), na.rm = TRUE, suma = TRUE, plot = FALSE)
