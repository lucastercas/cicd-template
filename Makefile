.PHONY: up

up:
	docker-compose up

get_key:
	docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
