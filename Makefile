.PHONY: build-frontend
build-frontend:
	npm --prefix app install
	npm --prefix app run build
	npm --prefix app run adapt

.PHONY: build-backend
build-backend:
	go build -o build/website .

GCP_PROJECT := exupery-software
DOCKER_REGISTRY := eu.gcr.io/$(GCP_PROJECT)
DOCKER_IMAGE_NODE := $(DOCKER_REGISTRY)/library/node:15.10.0
DOCKER_IMAGE_GOLANG := $(DOCKER_REGISTRY)/library/golang:1.16.0
DOCKER_IMAGE := $(DOCKER_REGISTRY)/build/exupery-software/website
SERVICE := exupery-software-website

.PHONY: docker-build
docker-build:
	docker build \
		--build-arg DOCKER_IMAGE_NODE=$(DOCKER_IMAGE_NODE) \
		--build-arg DOCKER_IMAGE_GOLANG=$(DOCKER_IMAGE_GOLANG) \
		--tag $(DOCKER_IMAGE) \
		.

.PHONY: docker-push
docker-push: docker-build
	docker push $(DOCKER_IMAGE)

.PHONY: docker-deploy
docker-deploy: docker-push
	gcloud --project=$(GCP_PROJECT) run deploy \
		--platform managed \
		--region europe-west4 \
		--image $(DOCKER_IMAGE) \
		$(SERVICE)
