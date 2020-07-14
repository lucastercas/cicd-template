.PHONY: up

up:
	docker-compose up

get_key:
	docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

build:
	docker run -it --rm --name maven_build \
		-v "$(CURDIR)/modulo-1":/usr/src/mymaven \
		-w /usr/src/mymaven maven:latest \
		mvn clean install -e -X

test:
	docker run -it --rm --name maven_build \
		-v "$(CURDIR)/modulo-1":/usr/src/mymaven \
		-w /usr/src/mymaven maven:latest \
		mvn test