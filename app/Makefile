.PHONY: build test

build_jar:
	docker run --rm --name maven_build \
		-v "$(CURDIR)":/usr/src/mymaven \
		-w /usr/src/mymaven maven:latest \
		mvn clean install -X

test:
	docker run --rm --name maven_build \
		-v "$(CURDIR)":/usr/src/mymaven \
		-w /usr/src/mymaven maven:latest \
		mvn test

build_image:
	docker build -t lucastercas/spring .

docker_push:
	docker push lucastercas/spring