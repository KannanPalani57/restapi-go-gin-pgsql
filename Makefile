build:
	@go build -o bin/go-restapi

run: build
	@./bin/go-restapi

test:
	@go test -v ./...