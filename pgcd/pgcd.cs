int Pgcd(int p, int q)
{
  while (q != 0)
    (p, q) = (q, p % q);
  return p;
}

void AffichePgcd(dynamic p, dynamic q) =>
  Console.WriteLine($"PGCD = {Pgcd(p, q)}");

AffichePgcd(48, 18);
AffichePgcd(48.0, 18.0);
AffichePgcd(48.0 + 0.3 - 0.1 - 0.2, 18.0);
