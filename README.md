# DM Compilation

### Compilation & exécution
  + Automatique (sur tous les exemples):
    ```sh
    $ sh dune.sh
    ```
    ou avec l'afficheur d'activé
    ```sh
    $ sh dune.sh 1
    ```
  + À la main :
    ```sh
    $ cd src
    $ dune clean
    $ dune build
    $ ./_build/default/main.exe ../tests/minic-ok-1.in
    ```

### Extensions
  + Étendre le langage
    + [x] Opérateurs 
      + [x] Binaires 
        + soustraction `-`
        + division `/`
        + et logique `&&`
        + ou logique `||`
        + inférieur ou égal `<=`
        + supérieur `>`
        + supérieur ou égal `>=`
        + test d'égalité `==`
        + test d'inégalité `!=`
      + [x] Unaires 
        + non logique `!`
        + adresse `&`
    + [x] Pointeurs
    + [x] Structures
    + [x] Boucle for
    + Ajout de types
      + Bool 
      + Float
  + Raffiner l'analyse
    + [x] Messages d'erreurs personnalisés
  + Compléter le projet
    + [x] Afficheur
    + [x] Interprète
      + Ne fonctionne pas sur les structures 

### Explications

1. Comportement des opérateurs 

Les opérateurs `+ - * / < <= > >=` peuvent s'appliquer à 
des combinaisons d'entiers et de flottants. Par contre les opérateurs logiques 
`&& || !` s'appliquent seulement à des booleans. En plus des nouveaux types et opérateurs, 
j'ai ajouté une possibilité de `cast` (int → float, float → int, ...).

2. Afficheur 

Pour activer l'afficheur, il suffit de donner un paramètre 
supplémentaire à l'exécution (exemple; `./main.exe ficher.in 1` activera l'afficheur
mais pas `./main.exe fichier.in`).

3. Erreurs personnalisés

Les erreurs de syntaxes sont répertoriés dans le fichier `mcparser.messages`, 
géré par une extention `menhir`.

4. Interprète 

L'interprète prend en entré un AST de type prog et affichera dans la sortie standard 
seulement le résultat des différents appels à la fonction `putchar`.
Les variables entières, flottantes, pointeurs et booleans sont initialisées respectivement
aux valeurs `0`, `0.`, `Null`et `false`.

5. Syntaxe 

La majorité des possibilitées admisent ou non par la syntaxe sont présentés dans les 
fichiers d'exemple.

6. Tests

Les fichiers de tests sont répertoriés dans le dossier `test/`, ceux dont le nom
commence par `err` sont cencés déclencher une erreur de typage, ceux dont le nom
commence par `minic-ok` sont cencé être bien écrit, bien typés et interprétables, 
enfin ceux dont le nom commence par `syntax-err` doivent déclencher une erreur de 
syntaxe (les deux derniers sont seulement typable mais pas interprétables car ils
contiennent des structures).



#### Ressources

+ [Writing a C compiler](https://norasandler.com/2017/11/29/Write-a-Compiler.html)
+ [C compiler in OCaml](https://github.com/noti0na1/socc)
+ [Parse error with menhir](https://baturin.org/blog/declarative-parse-error-reporting-with-menhir/)

