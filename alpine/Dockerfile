# quay.io/cmosetick/pause-image:alpine

# for interactive debugging with an Alpine based image that needs to run forever

# pause command can be pulled from:
# gcr.io/google_containers/pause-amd64:3.1

# or C source file here:
# https://github.com/kubernetes/kubernetes/blob/master/build/pause/pause.c

FROM alpine:latest as builder
WORKDIR /build
RUN \
apk add --update --no-cache build-base gcc
COPY pause.c .
RUN \
gcc pause.c -o pause

# make the final image now
FROM alpine:latest
COPY --from=builder /build/pause /pause
CMD ["/pause"]
