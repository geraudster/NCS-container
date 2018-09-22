IMAGE_NAME ?= geraudster/ncs-container
CONTAINER_NAME ?= ncs

.PHONY: build

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run --rm -it $(IMAGE_NAME) -n $(CONTAINER_NAME) bash
