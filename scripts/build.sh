#!/bin/bash
echo "building.."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t "$DOCKER_USERNAME"/woolly:woo .
docker tag woo "$DOCKER_USERNAME"/woolly:woo
docker images
docker run -d -p 80:8080 --name  woo "$DOCKER_USERNAME"/woolly:woo
docker exec -it woo /bin/sh -c "npm test"