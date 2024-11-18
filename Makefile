SHELL := /bin/bash

install:
	./scripts/install-from-source.sh

uninstall:
	./uninstall.sh

.PHONY: install uninstall
