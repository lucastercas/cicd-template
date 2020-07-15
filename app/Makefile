.PHONY: build test

test:
	mvn test

build:
	mvn -B -DskipTests clean package

scan:
	mvn sonar:sonar \
			-Dsonar.projectKey=org.springframework:gs-spring-boot-docker \
			-Dsonar.host.url=http://localhost:7000 \
			-Dsonar.login=9427f57aaca2d21937228b06cc86f9eae30c19a8

build_image:
	docker build -t lucastercas/spring .

docker_push:
	docker push lucastercas/spring

docker_build_jar:
	docker run --rm \
		-v "$(CURDIR)":/usr/src/mymaven \
		-w /usr/src/mymaven maven:latest \
		mvn clean install -X

docker_ test:
	docker run --rm \
		-v "$(CURDIR)":/usr/src/mymaven \
		-w /usr/src/mymaven maven:latest \
		mvn test

docker_run_scan:
	docker run --rm \
		maven:latest mvn sonar:sonar \
			-Dsonar.projectKey=org.springframework:gs-spring-boot-docker \
			-Dsonar.host.url=http://localhost:7000 \
			-Dsonar.login=9427f57aaca2d21937228b06cc86f9eae30c19a8