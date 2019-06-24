#!/bin/bash
docker pull fullnodes/swap:latest
docker stop swapd
docker rm swapd
docker volume create swap
docker run -dit --name swapd --net=host --restart=always -v swap:/root/.swap fullnodes/swap:latest
mkdir -p ~/.bin
cp $(pwd)/bin/swap* ~/.bin
