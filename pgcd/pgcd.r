pgcd <- function(p, q) {
  while (q != 0) {
    temp <- q
    q <- p %% q
    p <- temp
  }
  return(p)
}

affiche_pgcd <- function(p, q) {
  cat("PGCD = ", pgcd(p, q), "\n")
}

affiche_pgcd(48, 18)
affiche_pgcd(48.0, 18.0)
affiche_pgcd(48.0 + 0.3 - 0.1 - 0.2, 18.0)
