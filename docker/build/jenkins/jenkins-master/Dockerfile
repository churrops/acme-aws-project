FROM jenkins/jenkins:2.119-alpine

LABEL maintainer="Rodrigo Floriano de Souza"
LABEL email="florianocomercial@gmail.com"

USER root

ADD https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz /tmp
RUN tar -xvzf /tmp/docker-latest.tgz && \
    mv docker/* /usr/bin/ && \
    chmod +x /usr/bin/docker && \
    rm -f /tmp/docker-latest.tgz

RUN addgroup $USER docker
