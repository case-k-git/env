#!/bin/bash

bash ./script/insttalll-cuda.sh
bash ./script/install_dokcer_ubuntu.sh
bash ./script/docker_compose_install.sh
bash ./script/nvidia-container-runtime-script.sh
sudo apt-get install nvidia-container-runtime
sudo tee /etc/docker/daemon.json <<EOF
{
    "runtimes": {
        "nvidia": {
            "path": "/usr/bin/nvidia-container-runtime",
            "runtimeArgs": []
        }
    }
}
EOF
sudo pkill -SIGHUP dockerd
bash ./script/build-kaggle-gpu-image.sh
sudo docker-compose -f docker-compose-kaggle-gpu.yml up -d --build
