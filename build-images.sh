#!/bin/bash

if [ -z "$1" ]; then
    TAG=$(date '+%Y-%m-%d')
else
    TAG="$1"
fi

docker build . --tag="phpexperts/phpstan:${TAG}"
docker build . --tag="phpexperts/phpstan:latest"

