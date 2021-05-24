#!/bin/bash
imageName=vitor-rocha:node_api
containerName=docker-node_api

docker build -t $imageName -f Dockerfile  .

echo Delete old container...
docker rm -f $containerName

echo Run new container...
docker run -d -p 3000:8080 --name $containerName $imageName