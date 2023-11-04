
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     ADD = 258,
     SUB = 259,
     DIV = 260,
     MULT = 261,
     GE = 262,
     LE = 263,
     GT = 264,
     LT = 265,
     EQ = 266,
     NE = 267,
     ASSIGN = 268,
     AND = 269,
     OR = 270,
     XOR = 271,
     INT = 272,
     FLOAT = 273,
     CHAR = 274,
     VOID = 275,
     DOUBLE = 276,
     RETURN = 277,
     FOR = 278,
     IF = 279,
     ELSE = 280,
     SWITCH = 281,
     CASE = 282,
     BREAK = 283,
     WHILE = 284,
     INCLUDE = 285,
     ID = 286,
     NUM = 287,
     FLOAT_NUM = 288,
     SEMICOLON = 289,
     COMMA = 290,
     OP = 291,
     CP = 292,
     OB = 293,
     CB = 294,
     TRUE = 295,
     FALSE = 296
   };
#endif
/* Tokens.  */
#define ADD 258
#define SUB 259
#define DIV 260
#define MULT 261
#define GE 262
#define LE 263
#define GT 264
#define LT 265
#define EQ 266
#define NE 267
#define ASSIGN 268
#define AND 269
#define OR 270
#define XOR 271
#define INT 272
#define FLOAT 273
#define CHAR 274
#define VOID 275
#define DOUBLE 276
#define RETURN 277
#define FOR 278
#define IF 279
#define ELSE 280
#define SWITCH 281
#define CASE 282
#define BREAK 283
#define WHILE 284
#define INCLUDE 285
#define ID 286
#define NUM 287
#define FLOAT_NUM 288
#define SEMICOLON 289
#define COMMA 290
#define OP 291
#define CP 292
#define OB 293
#define CB 294
#define TRUE 295
#define FALSE 296




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


