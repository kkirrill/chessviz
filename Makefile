all: program

.PHONY: clean

program: build/main.o build/boardinit.o bin
	gcc -Wall -Werror build/main.o build/boardinit.o -o bin/program

build/main.o: src/main.c build
	gcc -Wall -Werror -c src/main.c -o build/main.o

build/boardinit.o: src/lboardinit.c build
	gcc -Wall -Werror -c src/boardinit.c -o build/boardinit.o

build:
	mkdir build

bin:
	mkdir bin

clean:
	rm -rf bin build
