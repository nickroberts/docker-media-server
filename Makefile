restart:
	@make stop
	@make start

start:
	@docker-compose up -d --no-recreate --remove-orphans

stop:
	@docker-compose down --remove-orphans --volumes
