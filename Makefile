.PHONY: up get_key run_app

# Start docker compose
up:
	@docker-compose --compatibility up --build

# Get initial key of jenkins
get_key:
	@docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
