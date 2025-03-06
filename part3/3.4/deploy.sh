#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <git_repository_url> <docker_hub_repository>"
    echo "Example: $0 https://github.com/docker-hy/docker-hy.github.io.git username/repo-name"
    exit 1
fi

GIT_REPO=$1
DOCKER_REPO=$2

git clone $GIT_REPO

REPO_NAME=$(basename $GIT_REPO .git)

docker build -t $DOCKER_REPO:latest ./$REPO_NAME

docker login --username $DOCKER_USERNAME --password $DOCKER_PASSWORD

docker push $DOCKER_REPO:latest