// Specification JFlex

import java_cup.runtime.Symbol;

%%
%unicode
%cup
%line
%column


nb = [0-9]
ID = ([a-z]|[A-Z])+
at = "@"([a-zA-Z])+
EGAL = "="
p= "."(print|Print|PRINT)
%%


{ID} {  return new Symbol(sym.ID, new String(yytext())); }
{EGAL} {  return new Symbol(sym.EGAL, new String(yytext())); }
{at} {return new Symbol(sym.AT, new String(yytext()));}
"{"   { return new Symbol(sym.ACCOU); }
"}"   { return new Symbol(sym.ACCFE); }
","  { return new Symbol(sym.VIRG); }
"+"	{ return new Symbol(sym.ADD); }
"-"	{ return new Symbol(sym.SOU); }
"*"	{ return new Symbol(sym.MUL); }
":"	{ return new Symbol(sym.DIV); }
"("	{ return new Symbol(sym.PO); }
")"	{ return new Symbol(sym.PF); }
 {p} {return new Symbol(sym.print, new String(yytext())); } 
{nb}+ { return new Symbol(sym.NB, new Integer(yytext())); }

\n { return new Symbol(sym.CLR, new String(yytext())); }
. {}
