#!/bin/bash

docker build -t tesla_dashcam - < Dockerfile
docker network create --internal isolated || echo "Network exists"
docker run --network isolated -v $(pwd)/input:/var/input:Z -v /var/www/html:/var/output:Z -it tesla_dashcam
