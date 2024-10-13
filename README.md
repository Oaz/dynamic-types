### Le code qui accompagne une série de billets sur le typage dynamique

- [Épisode 1](https://contretemps.azeau.com/post/illusion-typage-fort-python/)
- [Épisode 2](https://contretemps.azeau.com/post/utopie-typage-fort-dynamique/)
- [Épisode 3](https://contretemps.azeau.com/post/excursion-typage-fort-dynamique/)
- [Épisode 4](https://contretemps.azeau.com/post/bons-eleves-cancres-typage-dynamique/)

---

Le dossier `pgcd` contient le même calcul de PGCD dans plusieurs langages à typage dynamique

- Le code principal appelle 3 fois la même fonction d'affichage de PGCD pour les 3 couples suivants
  - Affiche PGCD (48,18)
  - Affiche PGCD (48.0,18.0)
  - Affiche PGCD (48.0+0.3-0.1-0.2,18.0)
- la fonction d'affichage de pgcd _ne fait aucune supposition de type sur ses 2 paramètres_.
  - Elle appelle une fonction de calcul de PGCD et affiche le résultat
- La fonction de calcul de PGCD définit ses 2 paramètres comme étant des **entiers** _si le langage le permet_.
  - Elle calcule le PGCD avec un simple algorithme d'Euclide __sans introduire de vérification sur le type des variables en dehors de la signature de la fonction__.

---

Le dossier `images` contient un Dockerfile par langage pour faciliter l'exécution de l'ensemble des scripts 
