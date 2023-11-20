#!/bin/bash

ENV_PREFIX=apiiro/vouch
TAG=alpine-$1
echo "Using tag ${TAG}"
docker buildx build \
  -f Dockerfile.alpine \
  --platform linux/amd64 \
  --push --pull \
  -t gcr.io/$ENV_PREFIX/vouch-proxy:$TAG \
  . 