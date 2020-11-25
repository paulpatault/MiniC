(* This file was auto-generated based on "src/mcparser.messages". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
    fun s ->
        match s with
        | 0 ->
            "<Un programme est une suite de variables globales suivient d'une suite de fonctions.>\n"
        | 4 ->
            "<Un varible ne peut etre definie qu'a partir d'expressions.>\n"
        | 101 ->
            "<Un varible ne peut etre definie qu'a partir d'expressions.>\n"
        | 102 ->
            "<Un varible ne peut etre definie qu'a partir d'expressions.>\n"
        | 26 ->
            "<Un varible ne peut etre definie qu'a partir d'expressions.>\n"
        | 27 ->
            "<Un varible ne peut etre definie qu'a partir d'expressions.>\n"
        | 25 ->
            "<Un varible ne peut etre definie qu'a partir d'expressions.>\n"
        | 65 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 29 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 37 ->
            "<Une operation s'effectue entre deux expressions.>\n"
        | 40 ->
            "<Une operation s'effectue entre deux expressions.>\n"
        | 103 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 42 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 43 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 44 ->
            "<Une comparaison s'effectue entre deux expressions.>\n"
        | 45 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 46 ->
            "<Une comparaison s'effectue entre deux expressions.>\n"
        | 47 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 48 ->
            "<Une operation s'effectue entre deux expressions.>\n"
        | 49 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 50 ->
            "<Une comparaison s'effectue entre deux expressions.>\n"
        | 51 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 30 ->
            "<Les parametres de fonctions sont optionnels, mais s'il y en a, ils doivent etre separes pas des ','.>\n"
        | 36 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 62 ->
            "<Les parametres de fonctions sont optionnels, mais s'il y en a, ils doivent etre separes pas des ','.>\n"
        | 52 ->
            "<Une comparaison s'effectue entre deux expressions.>\n"
        | 53 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 54 ->
            "<Une comparaison s'effectue entre deux expressions.>\n"
        | 55 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 56 ->
            "<Une comparaison s'effectue entre deux expressions.>\n"
        | 57 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 58 ->
            "<Une comparaison s'effectue entre deux expressions.>\n"
        | 59 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 60 ->
            "<Il ne peut y avoir que des operations entre expressions a l'interieur d'une definition de variable.>\n"
        | 61 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 9 ->
            "<Un programme est une suite de variables globales suivient d'une suite de fonctions.>\n"
        | 14 ->
            "<Les parametres de fonctions sont optionnels, mais s'il y en a, ils doivent etre separes pas des ','.>\n"
        | 18 ->
            "<Les parametres de fonctions sont optionnels, mais s'il y en a, ils doivent etre separes pas des ','.>\n"
        | 19 ->
            "<Les parametres de fonctions sont optionnels, mais s'il y en a, ils doivent etre separes pas des ','.>\n"
        | 21 ->
            "<La syntaxe de definition d'une boucle doit suivre : boucle(condition){ block }. >\n"
        | 24 ->
            "<La syntaxe de definition d'une boucle doit suivre : boucle(condition){ block }.>\n"
        | 67 ->
            "<La condition d'une boucle doit etre suivie de '{'.>\n"
        | 68 ->
            "<Il ne peut y avoir que des instructions a l'interieur d'une boucle.>\n"
        | 95 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 96 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 97 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 93 ->
            "<Le corps d'une fontion doit suivre les regles de la grammaire : definitions de variables locales, puis liste d'instructions.>\n"
        | 22 ->
            "<Le corps d'une fontion doit suivre les regles de la grammaire : definitions de variables locales, puis liste d'instructions.>\n"
        | 69 ->
            "<L'instruction return attend une expression.>\n"
        | 70 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 11 ->
            "<Les instructions doivent etre dans une fonction.>\n"
        | 13 ->
            "<Les parametre d'une fonction doivent etre entre parentheses.>\n"
        | 72 ->
            "<La fonction putchar() attend un parametre de type int.>\n"
        | 73 ->
            "<La fonction putchar() attend un parametre de type int.>\n"
        | 75 ->
            "<Il manque une '{' apres le la condition du if.>\n"
        | 76 ->
            "<Il manque une '{' apres le la condition du if.>\n"
        | 77 ->
            "<Une fonction ne peut pas etre definie dans une autre fonction.>\n"
        | 78 ->
            "<Les blocs internes des if et else doivent etre encadres par des accolades.>\n"
        | 80 ->
            "<Un identifiant ne peut pas etre suivi par un while.>\n"
        | 81 ->
            "<Une expression est attendue apres un '='.>\n"
        | 82 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | 86 ->
            "<Une fonction doit se terminer par un '}'.>\n"
        | 88 ->
            "<Un ';' est attendu a la fin d'une expression.>\n"
        | _ ->
            raise Not_found