
(defn pgcd [p q]
  (loop [p p q q]
    (if (zero? q)
      p
      (recur q (mod p q)))))

(defn affiche-pgcd [p q]
  (println (str "PGCD = " (pgcd p q))))

(affiche-pgcd 48 18)
(affiche-pgcd 48.0 18.0)
(affiche-pgcd (+ 48.0 0.3 -0.1 -0.2) 18.0)
