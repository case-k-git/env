#!/bin/bash
sudo apt update
sudo apt install git -y 
sudo apt install python-pip python3-pip -y 
sudo apt-get install unzip
sudo pip install kaggle
sudo mkdir /root/.kaggle/
sudo vi /root/.kaggle/kaggle.json
# https://github.com/Kaggle/kaggle-api
# sudo chmod 600 /root/.kaggle/kaggle.json
