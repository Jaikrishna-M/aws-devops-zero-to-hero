#!/bin/bash
set -e

# Name of the container to stop (replace with your container name)
CONTAINER_NAME="my_app_container"

# Check if the container is running
RUNNING_CONTAINER=$(docker ps -q -f name=${CONTAINER_NAME})

if [ ! -z "$RUNNING_CONTAINER" ]; then
    echo "Stopping the running container: $CONTAINER_NAME"
    docker stop $CONTAINER_NAME

    echo "Removing the container: $CONTAINER_NAME"
    docker rm $CONTAINER_NAME
else
    echo "No running container named '$CONTAINER_NAME' found."
fi
