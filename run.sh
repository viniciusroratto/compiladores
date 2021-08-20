flex scanner.l
gcc lex.yy.c -o analisador -lfl
ls -larth analisador
./analisador
