#!/bin/bash
echo "testing..."
docker run -d -p 80:8080 --name  woo "$DOCKER_USERNAME"/woolly:woo
docker exec -it woo /bin/sh -c "npm test"