#!/bin/bash

# Ejecutar los siguientes comandos antes de ejecutar este script por primera vez
# sudo docker network create jenkins
# sudo docker build . -f Dockerfile-jenkins-server -t myjenkins-lts:lts-jdk11

sudo docker run \
  --name jenkins-docker \
  --rm \
  --detach \
  --privileged \
  --network jenkins \
  --network-alias docker \
  --env DOCKER_TLS_CERTDIR=/certs \
  --volume jenkins-docker-certs:/certs/client \
  --volume jenkins_home:/var/jenkins_home \
  --publish 2376:2376 \
  --publish 3000:3000 \
  docker:dind \
  --storage-driver overlay2

sudo docker run \
  --name jenkins-server \
  -d \
  -v jenkins_home:/var/jenkins_home \
  -v jenkins-docker-certs:/certs/client:ro \
  --network jenkins \
  -p 8080:8080 -p 50000:50000 \
  --restart=on-failure \
  --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client \
  --env DOCKER_TLS_VERIFY=1 \
  myjenkins-lts:lts-jdk11