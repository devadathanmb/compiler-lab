%{
#include<stdio.h>

#include<stdlib.h>
#define YYSTYPE double
int yyerror(char *s);
int yylex();
%}
%token NUMBER
%left '+' '-'
%left '*' '/'
%left '(' ')'
%right UMINUS
%%

stmt : expr  {printf("%g\n", $1);}
expr : expr '+' expr {$$ = $1 + $3;}
	| expr '-' expr {$$ = $1 - $3;}
	| expr '*' expr {$$ = $1 * $3;}
        | expr '/' expr {$$ = $1 / $3;}
        | '-' expr %prec UMINUS {$$ = -$2;}
        | '(' expr ')' {$$ = $2;}
        | NUMBER {$$ = $1;}
;
 
%%

int main(){
	yyparse();
}

int yyerror(char *s){
	printf("%s is an invalid expression\n",s);
	return 0;
}
