IMAGE_NAME ?= geraudster/ncs-container
CONTAINER_NAME ?= ncs

.PHONY: build

build:
	docker build --network=host -t $(IMAGE_NAME) .

run:
	docker run --rm --name $(CONTAINER_NAME) -it $(IMAGE_NAME) bash

tfversion:
	docker run --rm --name $(CONTAINER_NAME) -it $(IMAGE_NAME) python3 -c 'import tensorflow as tf; print(tf.__version__)'
