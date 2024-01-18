#!make

help: _header
	${info }
	@echo Opciones:
	@echo --------------------------
	@echo build
	@echo workspace / workspace-root
	@echo --------------------------

_header:
	@echo -------
	@echo Node.js
	@echo -------

build:
	@docker compose build --pull

workspace:
	@docker compose run --rm node /bin/bash

workspace-root:
	@docker compose run --user root --rm node /bin/bash
