#!/bin/bash
# Build Kaggle NoteBook
git clone https://github.com/Kaggle/docker-python.git
cd docker-python
# --gpuオプションでビルド
sudo ./build --gpu
# イメージを確認
$ sudo docker image ls
