#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker run -d -p 80:8080 --name  woo "$DOCKER_USERNAME"/woolly:woo
docker push "$DOCKER_USERNAME"/woolly:woo
echo "deploying....."