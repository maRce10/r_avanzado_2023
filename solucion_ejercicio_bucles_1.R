# Ejercicio 1 
  
  # Podemos calcular el número de familias observadas para el primer archivo que leímos (`archivo1`) de esta forma:
  

length(unique(archivo1$Family))

# 1.1 Haga un bucle `for` que devuelva el número de familias para cada archivo

# vector vacio
resultados <- vector()

# inicio del bucle
for (i in archivos_txt) {
  # leer archivo
  txt <- read.table(i, header = TRUE, skip = 4, sep = "\t")
  
  # calcular numero de familias
  nfam <- length(unique(txt$Family))
  
  # guardar resultados en vector vacio
  resultados <- append(resultados, nfam)
}

n_sp_df$familias <- resultados



# 1.2 Cree un cuadro de datos (data frame) que contenga dos columnas, una para el nombre del archivo y otra para el número de familias

n_familias_df <- data.frame(archivo = basename(archivos_txt), n_familias = resultados)




# 1.3 Añada una columna al cuadro de datos creado en el ejercicio anterior indicando la fecha de creación del video (esta información se encuentra en la columna 'Date' de cada archivo de texto). Note que cada archivo contiene solamente una fecha. Debe usar un bucle `for` para extraer esta información de los archivos.

# vector vacio
resultados <- vector()

# inicio del bucle
for (i in archivos_txt) {
  # leer archivo
  txt <- read.table(i, header = TRUE, skip = 4, sep = "\t")
  
  # guardar fecha
  fecha <- txt$Date[1]
  
  # guardar resultados en vector vacio
  resultados <- append(resultados, fecha)
}

n_sp_df$fecha <- resultados

#1.4 Añada una columna al cuadro de datos creado en el ejercicio 1.2 (y modificado en 1.3) indicando la profundidad a la que se grabó el video. Debe usar un bucle `for` para extraer esta información de los archivos.


resultados <- vector() # vector vacio

for (i in archivos_txt) { # inicio del bucle
  
  txt <- read.table(i, header = TRUE, skip = 4, sep = "\t") # leer archivo
  prof <- txt$Depth[1] # calcular numero de familias
  
  resultados <- append(resultados, prof) # guardar resultados en vector vacio
}

resultados <- gsub(" m", "", resultados)
resultados <- gsub("\\,", ".", resultados)
n_sp_df$profundidad <- as.numeric(resultados)


# Puede usar el siguiente código para convertir profundidad a un vector numérico:
  
n_sp_df$profundidad <- as.numeric(gsub(" m", "", gsub("\\,", ".", n_sp_df$profundidad)))

# 1.5 ¿Cuál es la correlación entre el número de especies observadas (que es igual al número de filas) y la profundidad? (pista: `cor.test()`)

cor(n_sp_df$n_filas, n_sp_df$familias)


# 1.6 ¿Cuál es la correlación entre el número de familias y la profundidad?
  
cor(n_sp_df$profundidad, n_sp_df$familias)

