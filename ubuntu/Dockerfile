# quay.io/cmosetick/pause-image:ubuntu

# for interactive debugging with an Ubuntu based image that needs to run forever

# pause command can be pulled from:
# gcr.io/google_containers/pause-amd64:3.1

# or C source file here:
# https://github.com/kubernetes/kubernetes/blob/master/build/pause/pause.c

FROM ubuntu:18.04 as builder
WORKDIR /build

RUN \
apt-get update && \
apt-get install -yq gcc

COPY pause.c .

RUN \
gcc pause.c -o pause

# make the final image now
FROM ubuntu:18.04 as final

COPY --from=builder /build/pause /pause

RUN \
apt-get update && \
apt-get install -yq inetutils-ping net-tools dnsutils traceroute nmap curl httpie

CMD ["/pause"]
