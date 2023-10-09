%option noyywrap

%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%
[a-zA-Z]+ { words++; chars += strlen(yytext); }
\n { chars++; lines++; }
. { chars++; }
%%

int main(int argc, char* argv[]){
	FILE* file;
	if (argc != 2){
		printf("Please provide a file name\n");
		return -1;
	}
	file = fopen(argv[1], "r");
	if(!file){
		printf("Error while opening file\n");
		return -1;
	}
	yyin = file;
	yylex();
	printf("Words = %d, Chars = %d, Lines = %d\n", words, chars, lines);
	return 0;
}
