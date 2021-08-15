APP = penguin-api
BIN = bin/$(APP)
CMD_SRC = cmd/$(APP)/main.go

build:
	go build -o $(BIN) $(CMD_SRC)
run: build
	$(BIN) --address 127.0.0.1 --port 8081
clean:
	rm -rf bin/

# Docker-specific targets
local-docker-build:
	docker build -t localhost/$(APP):dev .

local-docker-run:
	docker run --rm localhost/$(APP):dev
