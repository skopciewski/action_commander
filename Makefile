run:
	docker-compose up -d
	docker-compose run dev sh
	docker-compose stop

.PHONY: run
