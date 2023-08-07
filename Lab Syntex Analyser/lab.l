%option noyywrap
%{
#include "lab.tab.h"
%}

digit [0-9]
letter[a-zA-Z]
space [ ]
us [_]
qu ["]
id ({letter}|{us})+
num {digit}+
par [%]
equ [=]
literal {qu}({letter}|{space}|{par}|{equ})+{qu}

%%
"int" {return(INT);}
"if" {return(IF);}
{num} {return(NUM);}
">" {return(GT);}
"<" {return(LT);}
"+" {return(ADD);}
"-" {return(SUB);}
"*" {return(MUL);}
"/" {return(DIV);}
"(" {return(LP);}
")" {return(RP);}
"{" {return(LP2);}
"}" {return(RP2);}
"," {return(comma);}
";" {return(Semicolon);}
{id} {return(Identifier);}
{equ} {return(ASS);}
{literal} {return(Literal);}
{space} {}
%%