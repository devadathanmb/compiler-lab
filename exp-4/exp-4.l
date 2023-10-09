%option noyywrap

%{
#include <string.h>
#include <ctype.h>
%}

%%
"abc" {strcpy(yytext, "ABC"); ECHO;}
. { ECHO;}
%%

int main(int argc, char* argv[]){
	yylex();
	return 0;
}
