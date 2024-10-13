int pgcd(int p, int q) {
  while (q != 0) {
    var temp = q;
    q = p % q;
    p = temp;
  }
  return p;
}

void affichePgcd(dynamic p, dynamic q) {
  print("PGCD = ${pgcd(p, q)}");
}

void main() {
  affichePgcd(48, 18);
  affichePgcd(48.0, 18.0);
  affichePgcd(48.0 + 0.3 - 0.1 - 0.2, 18.0);
}
