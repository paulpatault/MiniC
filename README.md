# DM Compilation

+ Compilation et exécution 
    ```sh
    $ cd src
    $ make opt
    $ ./main.opt ../tests/mini-c.in
    ```
+ Tests de grammaire
  + Génération .automaton et .conflicts
    ```sh
    $ menhir -v parser.mly
    ```
  + Interprète menhir
    ```sh
    $ menhir --interpret --interpret-show-cst parser.mly
    ```