SHELL := /bin/bash

# Installing the tool
install:
	./scripts/install-from-source.sh

# Remove the tool
uninstall:
	sudo rm "${PREFIX}/bin/dotload"
	hash -r

.PHONY: install uninstall