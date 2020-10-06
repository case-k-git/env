#!/bin/bash
sudo apt-get install git-all -y
sudo apt-get install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
# sudo docker pull jupyter/datascience-notebook
# sudo docker images jupyter/datascience-notebook
# sudo docker run -d --name notebook -v /home/data:/home/jovyan/ -p 8888:8888 jupyter/datascience-notebook
# sudo docker exec -it notebook jupyter notebook list
