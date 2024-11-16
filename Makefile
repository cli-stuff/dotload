NPROCS := $(shell nproc)
MAKEFLAGS += -j$(NPROCS)
SHELL := /bin/bash

# Removing artifacts after build
clean:
	./scripts/clean.sh

# Installing the tool
install:
	./scripts/install-from-source.sh

# Remove the tool
uninstall:
	sudo rm "${PREFIX}/bin/dotload"
	hash -r

.PHONY: clean install uninstall