#!/bin/bash

docker pull ubuntu:18.04
docker build --no-cache . -t quay.io/cmosetick/pause-image:ubuntu-v3
docker push quay.io/cmosetick/pause-image:ubuntu-v3
