.PHONY: up get_key install_plugins run_app

up:
	@docker-compose --compatibility up --build

get_key:
	@docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

install_plugin:
	@docker-compose exec jenkins "/usr/local/bin/install-plugins.sh gitlab-plugin"