.PHONY: build test

build:
	docker run --rm --name maven_build \
		-v "$(CURDIR)":/usr/src/mymaven \
		-w /usr/src/mymaven maven:latest \
		mvn clean install -e -X

test:
	docker run --rm --name maven_build \
		-v "$(CURDIR)":/usr/src/mymaven \
		-w /usr/src/mymaven maven:latest \
		mvn test