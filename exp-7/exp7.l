%option noyywrap
%{
#include "exp7.tab.h"
int yyerror();
%}
%%
[a-zA-Z] {return letter;}
[_] {return underscore;}
[0-9] {return digit;}
\n return 0;
. {yyerror();}

%%

