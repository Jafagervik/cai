alias a := all

all: build run clean

build:
    @mkdir -p ./bin
    cc -std=c99 -pedantic -Wall -Wextra -Werror -Iinclude -c src/cai.c -o ./bin/cai.o
    cc -std=c99 -pedantic -Wall -Wextra -Werror -Iinclude ./bin/cai.o main.c -o ./bin/main -lm

run: build
    @ ./bin/main

clean:
    @rm -rf ./bin/main ./bin/cai.o ./bin

