%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<string.h>
	int yylex();
	int yywrap();
	void yyerror(const char *s);
	FILE * yyout;
	#define YYSTYPE double
	extern int yylineno;
%}


%token ADD SUB DIV MULT
%token GE LE GT LT EQ NE
%token ASSIGN AND OR XOR
%token INT FLOAT CHAR VOID DOUBLE RETURN
%token FOR IF ELSE SWITCH CASE BREAK WHILE
%token INCLUDE ID NUM FLOAT_NUM
%token SEMICOLON COMMA OP CP OB CB
%token TRUE FALSE

%start program
%%


program: headers main OP CP OB body return CB
;


main: type ID
;


headers: headers headers
| INCLUDE
;


return: RETURN value SEMICOLON 
|
;


value: NUM {$$=$1;}
| FLOAT_NUM {$$=$1;}
| ID
;


body: body body
| statement SEMICOLON
| IF OP cond CP OB body CB else
| FOR OP statement SEMICOLON cond SEMICOLON statement CP OB body CB
| WHILE OP cond CP OB body CB
;


type : INT
| CHAR
| FLOAT
| DOUBLE
| VOID
;


statement: type ID init {$2=$3; }
| ID ASSIGN expression  {$1=$3; fprintf(yyout,"Assignment on line %d: %lf\n",yylineno,$3);}
| ID op expression
;

op: GE
| LE
| GT
| LT
| EQ
| NE
;

else: ELSE OB body CB
|
;

cond: value op value 
| TRUE 
| FALSE
| cond AND cond
| cond OR cond
| cond XOR cond
;


init: ASSIGN value {$$=$2; fprintf(yyout,"Assignment on line %d: %lf\n",yylineno,$2);}
|
;

expression: expression ADD expression { $$=$1+$3;  fprintf(yyout, "Recognized '+' expression. Result: %lf\n", $$);}
| expression SUB expression  { $$=$1-$3;  fprintf(yyout, "Recognized '-' expression. Result: %lf\n", $$); }
| expression MULT expression  { $$=$1*$3;  fprintf(yyout, "Recognized '*' expression. Result: %lf\n",$$); }
| expression DIV expression  { $$=$1/$3;  fprintf(yyout, "Recognized '/' expression. Result: %lf\n",$$);}
| value {$$=$1;}
;


%%
#include "lex.yy.c"
int main() {
    yyout=fopen("output.txt","w");
    yyparse();
    fclose(yyout);
}
int yywrap() {
    return 1;
}
void yyerror(const char* msg) {
    fprintf(stderr, "%s\n", msg);
}