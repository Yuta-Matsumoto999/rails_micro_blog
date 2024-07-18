install:
	docker compose run --rm app rails new . --force --no-deps --database=mysql --api
build:
	docker compose build
up:
	docker compose up -d
down:
	docker compose down
destroy:
	docker compose down --rmi all --volumes --remove-orphans
app:
	docker compose exec app bash
web:
	docker compose exec web bash
db:
	docker compose exec db bash