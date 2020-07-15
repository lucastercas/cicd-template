.PHONY: build_jar test scan build_image push_image

build:
	@docker run --rm \
		-v "$(CURDIR)":/usr/src/mymaven \
		-v /root/.m2:/root/.m2 \
		-w /usr/src/mymaven \
		maven:latest mvn -B -DskipTests clean package

test:
	@docker run --rm \
		-v "$(CURDIR)":/usr/src/mymaven \
		-v /root/.m2:/root/.m2 \
		-w /usr/src/mymaven \
		maven:latest mvn test

scan:
	@mvn sonar:sonar \
			-Dsonar.projectKey=org.springframework:gs-spring-boot-docker \
			-Dsonar.host.url=http://$(SONAR_HOST) \
			-Dsonar.login=$(SONAR_LOGIN)

build_image:
	@docker build -t lucastercas/spring .

push_image:
	@docker push lucastercas/spring