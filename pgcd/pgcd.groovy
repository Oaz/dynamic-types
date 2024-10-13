static def pgcd(int p, int q) {
  while (q != 0) {
    (p, q) = [q, p % q]
  }
  return p
}

def affichePgcd(p, q) {
  println "PGCD = ${pgcd(p, q)}"
}

static void main(String[] args) {
  affichePgcd(48, 18)
  affichePgcd(48.0, 18.0)
  affichePgcd(48.0 + 0.3 - 0.1 - 0.2, 18.0)
}
