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
/* Names (also called identifiers) in Lua can be any string of letters, digits, and underscores, not beginning with a digit
As a convention, names starting with an underscore followed by uppercase letters (such as _VERSION) are
reserved for internal global variables used by Lua */
ID = [_|a-z|A-Z][a-z|A-Z|0-9|_]*
SOMA = "+"
INTEIRO = 0|[1-9][0-9]*


%%

"if"                         { imprimir("Palavra reservada if", yytext()); }
"then"                       { imprimir("Palavra reservada then", yytext()); }
{BRANCO}                     { imprimir("Espaço em branco", yytext()); }
{ID}                         { imprimir("Identificador", yytext()); }
{SOMA}                       { imprimir("Operador de soma", yytext()); }
{INTEIRO}                    { imprimir("Número Inteiro", yytext()); }
. { throw new RuntimeException("Caractere inválido " + yytext()); }
