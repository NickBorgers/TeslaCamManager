#!/bin/bash
mkdir temp
cp container_script.sh temp/
cp Dockerfile temp/
docker build -t tesla_dashcam ./temp/
rm -rf temp
docker network create --internal isolated || echo "Network exists"
docker run --rm --network isolated -v $(pwd)/input:/var/input:Z -v /var/www/html:/var/output:Z -it tesla_dashcam
