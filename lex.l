%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<malloc.h>
	#include<string.h>
	#include "y.tab.h"
	
%}
%option yylineno
alpha [a-zA-Z]
digit [0-9] 
unary "++"|"--"

%%
"+" return ADD; 
"-"  return SUB; 
"/"  return DIV; 
"*"  return MULT; 
">=" return GE;
"<=" return LE;
">" return GT; 
"<" return LT; 
"==" return EQ;
"!=" return NE;
"=" return ASSIGN;
"&&" return AND;
"||" return OR;
"^" return XOR;
"int" return INT;
"float" return FLOAT; 
"char" return CHAR; 
"void"  return VOID; 
"double" return DOUBLE;
"return"  return RETURN; 
"for" return FOR; 
"if" return IF; 
"else" return ELSE; 
"break" return BREAK;
"while" return WHILE;
"true" return TRUE;
"false" return FALSE;
^"#include"[ ]*<.+\.h>  return INCLUDE; 
{alpha}({alpha}|{digit})* return ID;
([0-9]+|([0-9]*\.[0-9]+)([eE][-+]?[0-9]+)?) {
    yylval = atof(yytext); 
	return NUM;
	}


";" return SEMICOLON;
"," return COMMA;
"(" return OP;
")" return CP;
"{" return OB;
"}" return CB;
. ;
[ \n] ;

%%
