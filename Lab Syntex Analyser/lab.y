%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token INT NUM ADD SUB MUL DIV GT LT LP RP LP2 RP2 IF comma Semicolon Identifier ASS Literal
%start lab
%%
lab: define define IfCon LP2 equation RP2;

AritOP: ADD | SUB | MUL | DIV;
CON: GT | LT;
NUMorID: NUM | SUB NUM | Identifier;
define: INT NUMorID ASS NUMorID Semicolon;
equation: NUMorID ASS NUMorID AritOP NUMorID Semicolon;
IfCon: IF LP NUMorID CON NUMorID RP;
%%

int main(){
yyparse();
printf("Parsing Finished");
}

void yyerror(char *s){
fprintf(stderr,"error:%s",s);
}