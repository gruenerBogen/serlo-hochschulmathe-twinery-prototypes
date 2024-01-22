.PHONY: help install build

MANIFEST=com.github.tmedwards.tweego.yml
BUILD_DIR=build-dir
PWD=$(shell pwd)

default: help

clean:
	rm -rfv .flatpak-builder

help:
	@echo "Usage: make [command]"
	@echo ""
	@echo "Commands:"
	@echo ""
	@echo "build   – Build all stories"
	@echo "clean   – Clean build cache"
	@echo "install – Install tweego"

install:
	flatpak-builder --user --install --force-clean $(BUILD_DIR) $(MANIFEST)

build:
	scripts/build_stories.sh
