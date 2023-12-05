all:
	bison -d valid_arith.y
	flex valid_arith.l
	gcc lex.yy.c valid_arith.tab.c -o valid
