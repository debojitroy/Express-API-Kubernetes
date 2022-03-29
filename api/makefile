-include Makefile.overrides

IMAGE ?= simple-express-api:latest
FULL_IMAGE_TAG = "$(PREFIX)$(IMAGE)"

all: image push

image:
	@echo "Building image $(FULL_IMAGE_TAG)"
	docker build -t $(FULL_IMAGE_TAG) ./

push:
	docker push $(FULL_IMAGE_TAG)