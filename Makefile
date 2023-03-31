.PHONY: init
init: ## create .env.local file from .env
	cd app && \
	cp -u -p .env .env.local

.PHONY: install
install: ## install
	docker exec -it api composer install

.PHONY: start
start: ## start
	docker compose up -d --build

.PHONY: log
log: ## log
	symfony server:log
