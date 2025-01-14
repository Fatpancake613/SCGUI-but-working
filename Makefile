CC ?= gcc
CFLAGS = -Wall -Wextra
LIBS = -ldl -lm -lSDL2 -lSDL2_image -lSDL2_ttf
BIN_DIR = ./bin

# Installs needed packages
configure:
	chmod u+x bin/install.sh && ./bin/install.sh

# Compiles and runs tests
run:
	${CC} tests/main.c $(CFLAGS) -o $(BIN_DIR)/main -Iinclude ./src/*.c $(LIBS)
	$(BIN_DIR)/main