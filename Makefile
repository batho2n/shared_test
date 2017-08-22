all:
	gcc -c -fPIC test.c
	gcc -c app.c
	gcc -shared -fPIC -o libtest.so test.o
	gcc -o app app.o libtest.so 
