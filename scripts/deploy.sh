#!/bin/bash
echo "deploying....."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push "$DOCKER_USERNAME"/woolly:woo
