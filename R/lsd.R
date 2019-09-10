#' Diseno de un experimento alpha lattice
#'
#' @description Diseno de un experimento usando Alpha Lattice (diseño utilizado en mejoramiento genetico de trigo).
#' @usage lsd(x, y)
#' @param x Vector columna
#' @param y Vector columna
#' @return Diseno del experimento
#' @importFrom agricolae LSD.test
#' @importFrom stats aov
#' @export
lsd <- function(x, y) {
  modelo <- aov(y ~ x)
  ans <- LSD.test(modelo, "x", p.adj = "bonferroni")
}
