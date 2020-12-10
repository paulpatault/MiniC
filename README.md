# DM Compilation
<!-- 
+ Compilation & exécution
  + Automatique sur tous les exemples:
    ```sh
    $ sh test.sh
    ```
  + À la main :
    ```sh
    $ cd src
    $ make opt
    $ ./main.opt ../tests/minic-ok-1.in
    ```
+ Détails 
  + Retrouvez l'ensemble des fichiers de tests dans le dossier `tests/`, ou avec la commande
    ```sh
    $ ls tests/*.in
    ```
  + Tests de grammaire
    + Génération .automaton et .conflicts
      ```sh
      $ menhir -v parser.mly
      ```
    + Interprète menhir
      ```sh
      $ menhir --interpret --interpret-show-cst parser.mly
      ```  -->

### Compilation & exécution
  + Automatique (sur tous les exemples):
    ```sh
    $ sh dune.sh
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
      + [x] Binaires (-, /, &&, ||, >=, ...)
      + [x] Unaires (!, &, ...)
    + [x] Pointeurs
    + [x] Structures
  + Raffiner l'analyse
    + [x] Messages d'erreurs personnalisés
  + Compléter le projet
    + [x] Afficheur
    + [] Interpréteur (inc.)
