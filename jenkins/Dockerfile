FROM jenkins/jenkins:lts

USER root

RUN apt-get -y update && apt-get -y --no-install-recommends install make docker

RUN /usr/local/bin/install-plugins.sh gitlab-plugin