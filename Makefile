build:
	@go build -o bin/go-restapi

run: build
	@./bin/go-restapi

test:
	@go test -v ./...

migrateup: 
	migrate -path db/migration -database "postgresql://kannan:kannan@localhost:5432/db?sslmode=disable" -verbose up

migratedown: 
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/db?sslmode=disable" -verbose down

sqlc:
	sqlc generate
