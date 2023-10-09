%option noyywrap
%{
#include<string.h>
#include<ctype.h>
int vowels=0,cons=0;
%}
%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {cons++;}
. {;}
%%	

int main(int argc,char ** argv){
yylex();
printf("\n no of vowels is %d and consonant is %d\n",vowels,cons);
return(0);
}
