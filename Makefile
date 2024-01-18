#!make

help: _header
	${info }
	@echo Opciones:
	@echo --------------------------------
	@echo build
	@echo workspace
	@echo workspace-extra / workspace-root
	@echo clean
	@echo --------------------------------

_header:
	@echo -------
	@echo Node.js
	@echo -------

build:
	@docker compose build --pull

workspace:
	@docker compose run --service-ports --rm node /bin/bash

workspace-extra:
	@docker compose run --rm node /bin/bash

workspace-root:
	@docker compose run --user root --rm node /bin/bash

clean:
	@docker compose down -v --remove-orphans
