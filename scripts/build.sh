#!/bin/bash
echo "building.."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t "$DOCKER_USERNAME"/woolly:woo .
docker tag woo "$DOCKER_USERNAME"/woolly:woo
docker images