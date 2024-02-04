.PHONY: install
install:
		poetry install

.PHONY: dev
dev:
	- poetry run src/manage.py runserver

.PHONY: shell
shell:
	- poetry run src/manage.py shell

.PHONY: migrations
migrations:
	- poetry run src/manage.py makemigrations

.PHONY: migrate
migrate:
	- poetry run src/manage.py migrate

.PHONY: update
update: install migrations migrate ;
