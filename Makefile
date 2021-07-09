GOFILES=$(wildcard *.go)
GONAME=$(shell basename "$(PWD)")

fmt:
	go fmt ./src/...
.PHONY:fmt

lint: fmt
	golint ./src/...
.PHONY:lint

vet: fmt
	go vet ./src/...
.PHONY:vet

build: vet
	go build -o bin/$(GONAME) ./src/...
.PHONY:build
