GO ?= go
VERSION ?= $(shell git describe --always --dirty --tags)

.PHONY: version
version:
	@echo $(VERSION)

TPL := bin/tpl
$(TPL): export GOBIN := $(PWD)/bin
$(TPL): go.mod
	$(GO) install github.com/exupery-software/tpl

.PHONY: generate
generate: export PATH := $(PWD)/bin:$(PATH)
generate: $(TPL)
	$(GO) generate .

COMMAND := webserver

.PHONY: build
build: generate
	$(GO) build -o build/$(COMMAND) .

GCP_PROJECT ?= project-not-set
DOCKER_REGISTRY := eu.gcr.io/$(GCP_PROJECT)

.PHONY: docker-build
docker-build:
	docker build \
		--build-arg COMMAND=$(COMMAND) \
		--tag "$(DOCKER_REGISTRY)/$(COMMAND):$(VERSION)" \
		.

.PHONY: docker-push
docker-push: docker-build
	docker push "$(DOCKER_REGISTRY)/$(COMMAND):$(VERSION)"
