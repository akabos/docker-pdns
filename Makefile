.PHONY: all
all: build push

.PHONY: build
build:
	docker build --squash --tag akabos/pdns .

.PHONY: push
push:
	docker push akabos/pdns
