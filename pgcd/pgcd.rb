def pgcd(p, q)
  while q != 0
    p, q = q, p % q
  end
  p
end

def affiche_pgcd(p, q)
  puts "PGCD = #{pgcd(p, q)}"
end

affiche_pgcd(48, 18)
affiche_pgcd(48.0, 18.0)
affiche_pgcd(48.0 + 0.3 - 0.1 - 0.2, 18.0)
