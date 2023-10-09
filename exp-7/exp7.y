%{
#include<stdio.h>
#include<stdlib.h>
int yyerror();
%}
%token letter digit underscore
%%

variable : letter alphanumeric
;
alphanumeric : letter alphanumeric | digit alphanumeric | underscore alphanumeric | letter | digit | underscore
;

%%

int main(){
	printf("Enter Identifier :");
	yyparse();
	printf("Valid Identifier\n");
	return 0;
}

int yyerror(){
	printf("Invalid Identifier\n");
	exit(0);
}
