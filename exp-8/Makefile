all:
	lex exp8.l
	yacc -d exp8.y
	gcc lex.yy.c y.tab.c -ll
clean:
	rm -rf *.out
	rm -rf *.c
