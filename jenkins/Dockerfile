FROM jenkins/jenkins

USER root

RUN apt-get -y update && \
    apt-get -y --no-install-recommends install make maven

RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    chmod a+x get-docker.sh && \
    ./get-docker.sh

RUN /usr/local/bin/install-plugins.sh gitlab-plugin

# USER jenkins:jenkins