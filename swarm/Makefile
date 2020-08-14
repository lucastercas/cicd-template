.PHONY: deploy-all traefik jenkins sonar

deploy-all: traefik jenkins sonar

traefik:
	docker stack -c traefik.yml traefik

jenkins:
	docker stack -c jenkins.yml jenkins

sonar:
	docker stack -c sonar.yml sonar
