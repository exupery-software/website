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

.PHONY: build
build: generate
	$(GO) build -o build/website .

GCP_PROJECT := exupery-software
DOCKER_REGISTRY := eu.gcr.io/$(GCP_PROJECT)

.PHONY: docker-build
docker-build:
	docker build \
		--tag "$(DOCKER_REGISTRY)/website:$(VERSION)" \
		.

.PHONY: docker-push
docker-push: docker-build
	docker push "$(DOCKER_REGISTRY)/website:$(VERSION)"

.PHONY: docker-deploy
docker-deploy: docker-push
	gcloud --project=$(GCP_PROJECT) run deploy \
		--platform managed \
		--region europe-west4 \
		--image "$(DOCKER_REGISTRY)/website:$(VERSION)" \
		exupery-software-website
