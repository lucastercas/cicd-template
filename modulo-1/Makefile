.PHONY: build test

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