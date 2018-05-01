#!/bin/bash

JENKINS_HOME=/opt/jenkins_home

# Create and set correct permissions for Jenkins mount directory
sudo mkdir -p $JENKINS_HOME
sudo chmod -R 777 $JENKINS_HOME

# Start Jenkins
docker container run --name jenkins-master -d --privileged=true -p 80:8080 -p 50000:50000 -u 0 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkins/jenkins:2.119-alpine

