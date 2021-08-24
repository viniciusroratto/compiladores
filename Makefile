  # GRUPO F
  # Nomes: Tatiana Pacheco de Almeida (252561) - Vinícius Roratto Carvalho (00160094)
  # disciplina: INF01147 - Compiladores - Prof. Lucas Schnorr


etapa1: lex.yy.o main.o
	gcc lex.yy.o main.o -o etapa1 -lfl

lex.yy.o:
	flex scanner.l
	gcc -c lex.yy.c
	
main.o:
	gcc -c main.c
	
clean:
	rm etapa1 lex.yy.c lex.yy.o main.o
	
run: etapa1
	 ./etapa1
	 
zip:
	tar -cvzf etapa1.tgz scanner.l main.c tokens.h Makefile testes.txt


