#!/bin/bash
sudo apt update
sudo apt install git
sudo apt install python-pip python3-pip
sudo pip install kaggle
mkdir /root/.kaggle/
# https://github.com/Kaggle/kaggle-api
# sudo chmod 600 /root/.kaggle/kaggle.json
