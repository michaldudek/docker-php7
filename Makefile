# Phony targets
.PHONY: all image latest push run

VERSION ?= latest

# Targets
all: image push

image:
	docker build \
		-t "michaldudek/php7:$(VERSION)" \
		.

latest:
	docker tag "michaldudek/php7:$(VERSION)" "michaldudek/php7:latest"

push:
# This is used by CI, maybe we'll use it in the future, for now manual push
# ifndef DOCKER_HUB_EMAIL
# 	$(error DOCKER_HUB_EMAIL not set.)
# endif

# ifndef DOCKER_HUB_USERNAME
# 	$(error DOCKER_HUB_USERNAME not set.)
# endif

# ifndef DOCKER_HUB_PASSWORD
# 	$(error DOCKER_HUB_PASSWORD not set.)
# endif

# docker login \
# 	-e $(DOCKER_HUB_EMAIL) \
# 	-u $(DOCKER_HUB_USERNAME) \
# 	-p $(DOCKER_HUB_PASSWORD)

	docker push "michaldudek/php7"

# Run it interactively
run:
	docker run --rm -t -i "michaldudek/php7:$(VERSION)" /bin/sh
