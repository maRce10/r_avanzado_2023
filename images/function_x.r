fnctn_X <- function(sq_mt, vctr) {
  # Transponer matrix y elevarlo al cuadrado
  stp1 <- t(sq_mt)
  stp2 <- vctr * vctr

  # Guardar ambos resultados en una lista y mostrarlos
  rslt <- list(stp1, stp2)
  return(rslt)
}
