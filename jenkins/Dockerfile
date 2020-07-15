FROM jenkins/jenkins

USER root

RUN apt-get -y update && \
    apt-get -y --no-install-recommends install \
        make \
        maven \
        sshpass \
        python3-pip \
        python3-setuptools

RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    chmod a+x get-docker.sh && \
    ./get-docker.sh

RUN pip3 install docker ansible

RUN /usr/local/bin/install-plugins.sh gitlab-plugin

# USER jenkins:jenkins