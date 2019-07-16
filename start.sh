#!/bin/bash

export dir="$(cd "$(dirname "$0")" && pwd)"
dataDir=$dir/data

if [ ! -d $dataDir ]; then
  mkdir $dataDir
fi

docker-compose -f $dir/docker-compose.yaml up -d
