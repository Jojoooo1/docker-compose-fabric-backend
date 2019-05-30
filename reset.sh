#!/bin/bash
dir="$(cd "$(dirname "$0")" && pwd)"

# look for Hyperledger and dev-peers related containers
dockers=$(docker ps -a | grep "mongo" | awk '{print $1}')
if [[ $dockers ]]; then
  docker rm -f $dockers
fi

# Remove all volumes
sudo rm -rf $dir/data/*
