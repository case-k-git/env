#!/bin/bash

bash insttalll-cuda.sh
bash install_dokcer_ubuntu.sh
bash bash docker_compose_install.sh
bash nvidia-container-runtime-script
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
bash build-kaggle-gpu-image.sh
sudo docker-compose -f docker-compose-kaggle-gpu.yml up -d --build
