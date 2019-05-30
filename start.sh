#!/bin/bash
export dir="$(cd "$(dirname "$0")" && pwd)"

docker-compose -f $dir/docker-compose.yaml up -d
