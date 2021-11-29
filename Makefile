all:
	(cd srcs && docker-compose up -d)

stop:
	(cd srcs && docker-compose down)

clean:	stop
	docker system prune
