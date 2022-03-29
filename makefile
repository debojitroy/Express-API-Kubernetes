.DEFAULT_GOAL := all

PREFIX ?= deboroy/

all: image push

image:
	@echo "BUILDING ALL IMAGES"
	@echo "Using image prefix $(PREFIX)"
	@echo ""
	PREFIX=$(PREFIX) make --directory api image
	PREFIX=$(PREFIX) make --directory ssl image

push:
	@echo "PUSHING ALL IMAGES"
	@echo "Using image prefix $(PREFIX)"
	@echo ""
	PREFIX=$(PREFIX) make --directory api push
	PREFIX=$(PREFIX) make --directory ssl push