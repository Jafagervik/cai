# Variables
SRC_DIR := src
INCLUDE_DIR := include
BIN_DIR := ./bin
SRC_FILES := $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES := $(SRC_FILES:$(SRC_DIR)/%.c=$(BIN_DIR)/%.o)
OPT := -o3

# Target for the final executable
TARGET := $(BIN_DIR)/main

# Compiler flags
CFLAGS := -std=c99 -pedantic -Wall -Wextra -Werror -I$(INCLUDE_DIR)

# Ensure bin directory exists
$(BIN_DIR):
	@mkdir -p $(BIN_DIR)

# Build the target
$(TARGET): $(OBJ_FILES) | $(BIN_DIR)
	$(CC) $(OBJ_FILES) -o $(TARGET) -lm

# Rule to build object files
$(BIN_DIR)/%.o: $(SRC_DIR)/%.c | $(BIN_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -rf $(BIN_DIR)

# Run the program
run: $(TARGET)
	./$(TARGET)

# Default target
all: $(TARGET)


