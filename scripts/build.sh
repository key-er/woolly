#!/bin/bash
echo "building.."
docker build -t cybercuffs/woolly:woo .
docker run -d -p 80:8080 --name  woo cybercuffs/woolly:woo