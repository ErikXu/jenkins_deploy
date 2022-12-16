#!/bin/bash

docker run --rm -i \
    -v /go:/go \
    -v ${PWD}:/workspace \
    golang:alpine \
    sh -c 'cd /workspace && sh publish.sh'