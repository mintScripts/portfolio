#!/usr/bin/env bash
imageName=resty
containerName=resty-box

docker build -t ${imageName} .

echo Delete old container...
docker rm -f ${containerName}

echo Run new container...
docker run -d --name ${containerName} ${imageName}