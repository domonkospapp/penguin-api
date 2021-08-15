APP = penguin-app
BIN = bin/$(APP)
CMD_SRC = cmd/$(APP)/main.go

build:
	go build -o $(BIN) $(CMD_SRC)
run: build
	$(BIN) --address 127.0.0.1 --port 8081
clean:
	rm -rf bin/