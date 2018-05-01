#!/bin/bash
sudo yum update -y
sudo yum install docker -y
sudo service docker start; sudo chkconfig docker on
sudo docker pull emilevauge/whoami
