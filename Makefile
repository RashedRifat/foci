init:
	docker compose up --build -d
	make exec
up:
	docker compose up -d
	make exec
down:
	docker compose down
exec:
	docker exec -it foci-app bash