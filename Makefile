COMPILER=rustc
SRC_FILES=main.rs
BIN=main.out

build: $(BIN)

$(BIN): $(SRC_FILES)
	$(COMPILER) $^ -o $@

run: build
	./$(BIN)

.PHONY: clean
clean:
	rm -rf $(BIN)