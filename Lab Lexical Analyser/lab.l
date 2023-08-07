%option noyywrap
%{
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
"int" {printf("%s is a INT\n", yytext);}
{num} {printf("%s is a Number\n", yytext);}
{id} {printf("%s is Identifier\n", yytext);}
"+" {printf("%s is a ADD\n", yytext);}
"*" {printf("%s is a MUL\n", yytext);}
"(" {printf("%s is a LP\n", yytext);}
"," {printf("%s is a comma\n", yytext);}
")" {printf("%s is a RP\n", yytext);}
";" {printf("%s is a Semicolon\n", yytext);}
{equ} {printf("%s is a Assignment Operator\n", yytext);}
{literal} {printf("%s is a Literal\n", yytext);}
{space} {}
%%


int main(){
yylex();
}