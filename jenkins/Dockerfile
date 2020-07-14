FROM jenkins/jenkins:lts

RUN apt-get -y update && apt-get -y --no-install-recommends make docker

RUN /usr/local/bin/install-plugins.sh gitlab-plugin