ifdef ENV
export ENV_FILE = .env.$(ENV)
else
export ENV_FILE = .env
endif

include $(ENV_FILE)
export $(shell sed 's/=.*//' $(ENV_FILE))

# init:
# 	@envsubst < docker/letsencrypt/config/dns-conf/cloudflare.template.ini > data/letsencrypt/config/dns-conf/cloudflare.template.ini

restart:
	@make stop
	@make start

start:
	@docker-compose up -d --no-recreate --remove-orphans

stop:
	@docker-compose down --remove-orphans --volumes
