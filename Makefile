all: program

.PHONY: clean

program: build/main.o build/boardinit.o build/print.o bin
	gcc -Wall -Werror build/main.o build/boardinit.o build/print.o -o bin/program

build/main.o: src/main.c build
	gcc -Wall -Werror -c src/main.c -o build/main.o

build/boardinit.o: src/boardinit.c build
	gcc -Wall -Werror -c src/boardinit.c -o build/boardinit.o

build/print.o: src/print.c build
	gcc -Wall -Werror -c src/print.c -o build/print.o

build:
	mkdir build

bin:
	mkdir bin

clean:
	rm -rf bin build
