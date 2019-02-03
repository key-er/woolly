#!/bin/bash
echo "building.."
docker build -t "$DOCKER_USERNAME"/woolly:woo .
docker run -d -p 80:8080 --name  woo "$DOCKER_USERNAME"/woolly:woo