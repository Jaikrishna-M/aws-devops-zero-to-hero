#!/bin/bash

echo "Executing this old files"
set -e
docker ps -a -q | xargs -r docker stop | xargs -r docker rm
