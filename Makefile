.DEFAULT_GOAL := build

DOCKER_PROFILE ?= openbazaar
DOCKER_VERSION ?= $(shell git describe --tags --abbrev=0)
DOCKER_IMAGE_NAME ?= $(DOCKER_PROFILE)/base:$(DOCKER_VERSION)

build:
	docker build -t $(DOCKER_IMAGE_NAME) .

deploy:
	docker push $(DOCKER_IMAGE_NAME)
