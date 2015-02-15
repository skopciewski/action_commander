NAME=$$(basename $$(pwd))

run:
	docker run \
		-i -t --rm \
		-v $$(pwd):/opt/project/code \
		$(NAME) \
		bash

build:
	-docker rmi $(NAME)
	docker build --rm -t $(NAME) .

.PHONY: build run
