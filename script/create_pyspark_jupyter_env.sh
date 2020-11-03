#!/bin/bash
# Set tokyo region
$ gcloud config set dataproc/region asia-northeast1
Updated property [dataproc/region].

# Create Cluster
$ gcloud beta dataproc clusters create cluster-name2 \
    --optional-components=ANACONDA,JUPYTER \
    --image-version=1.3 \
    --enable-component-gateway \
    --bucket [bucket-name] \
    --project [project-id] \
    --master-machine-type n1-highmem-4 --master-boot-disk-size 300 \
    --num-workers 2 --worker-machine-type n1-highmem-4　\
    --num-preemptible-workers 2 --worker-machine-type n1-highmem-8 \
    --worker-boot-disk-size 300 --network=default
