#!/bin/bash
set -e
docker ps -a -q | xargs -r docker stop | xargs -r docker rm
