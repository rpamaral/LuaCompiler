package luacompiler;
import java_cup.runtime.*;

%%

%{

private void imprimir(String descricao, String lexema) {
    System.out.println(lexema + " - " + descricao);
}

%}

/*Declaração da classe que será gerada pelo flex*/

%class Scanner
%type void

/* Expressões regulares */

BRANCO = [\n| |\t|\r]
