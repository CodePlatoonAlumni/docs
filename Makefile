all:
	$(NOOP)

docs_build:
	docker-compose build docs

docs_run:
	docker-compose pull && docker-compose up
