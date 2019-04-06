#!/bin/bash

docker pull alpine:latest
docker build --no-cache . -t quay.io/cmosetick/pause-image:alpine
docker push quay.io/cmosetick/pause-image:alpine
