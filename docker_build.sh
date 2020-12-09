#!/bin/sh
set -eu

# in case we are being run from outside this directory
cd "$(dirname "$0")"

if [ -z "$*" ]; then 
    echo "You must provide a tag number"
    exit 1;
fi

docker build -f TestApp.Api.Dockerfile . -t eduyupanqui/my-test-api:$1
docker build -f TestApp.Service.Dockerfile . -t eduyupanqui/my-test-service:$1
docker build -f TestApp.Cli.Dockerfile . -t eduyupanqui/my-test-cli:$1