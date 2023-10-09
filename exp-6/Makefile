all:
	lex exp.l
	yacc -d exp.y
	gcc lex.yy.c y.tab.c -ll
clean:
	rm -rf *.out
	rm -rf *.c
