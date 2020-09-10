#!/bin/bash

if [ -z "$1" ]; then
    TAG=$(date '+%Y-%m-%d')
else
    TAG="$1"
fi

docker build docker/phpstan --tag="phpexperts/phpstan:${TAG}"  --build-arg PHP_VERSION=7.4
docker build docker/phpstan --tag="phpexperts/phpstan:latest"  --build-arg PHP_VERSION=7.4
