function pgcd(p: bigint, q: bigint): bigint {
  while (q != 0n) {
    [p, q] = [q, p % q];
  }
  return p;
}

function affiche_pgcd(p: any, q: any) {
  console.log(`PGCD = ${pgcd(p, q)}`);
}

affiche_pgcd(48n, 18n);
affiche_pgcd(48.0, 18.0);
affiche_pgcd(48.0 + 0.3 - 0.1 - 0.2, 18.0);
