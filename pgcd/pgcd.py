def pgcd(p: int, q: int) -> int:
  while q != 0:
    p, q = q, p % q
  return p

def affiche_pgcd(p, q):
  print(f"PGCD = {pgcd(p, q)}")

affiche_pgcd(48, 18)
affiche_pgcd(48.0, 18.0)
affiche_pgcd(48.0 + 0.3 - 0.1 - 0.2, 18.0)
