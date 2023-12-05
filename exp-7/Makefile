all:
	lex exp7.l
	yacc -d exp7.y
	gcc lex.yy.c y.tab.c
clean:
	rm -rf *.out
	rm -rf *.c
