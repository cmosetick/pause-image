pause-image
===========

# pause images for Alpine and Ubuntu / Debian platforms

## For when you need a container that pauses at run time but still has all the other packages available!

## basic example usage:

```
docker run --rm -it quay.io/cmosetick/pause-image:alpine
docker exec -it <container-id> /bin/ash

docker run --rm -it quay.io/cmosetick/pause-image:ubuntu
docker exec -it <container-id> /bin/bash
```

## Kubernetes deployment manifests for debugging

```
# Alpine base
kubectl create -f https://raw.githubusercontent.com/cmosetick/pause-image/master/alpine/deployment.yaml

kubectl exec -it <pod-id> /bin/ash

# Ubuntu base
kubectl create -f https://raw.githubusercontent.com/cmosetick/pause-image/master/ubuntu/deployment.yaml

kubectl exec -it <pod-id> /bin/bash

```
