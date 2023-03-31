.PHONY: init
init: ## create .env.local file from .env
	cd app && \
	cp -u -p .env .env.local

.PHONY: install
install: ## install
	docker exec -it php symfony composer install
	#docker exec -it php symfony console doctrine:database:create
	docker exec -it php symfony console doctrine:migrations:migrate -n
	docker exec -it php symfony console doctrine:fixtures:load -n

.PHONY: reset-db
reset-db: ## reset database
	docker exec -it php symfony console doctrine:database:drop --force
	docker exec -it php symfony console doctrine:database:create
	docker exec -it php symfony console doctrine:migrations:migrate -n
	docker exec -it php symfony console doctrine:fixtures:load -n

.PHONY: start
start: ## start
	docker compose up -d --build

.PHONY: log
log: ## log
	symfony server:log
