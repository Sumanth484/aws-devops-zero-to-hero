#!/bin/bash
set -e
# Fetch the latest container ID
container_id=$(docker ps -ql)

# Check if there's any container to remove
if [ -n "$container_id" ]; then
  echo "Stopping and removing the latest container with ID: $container_id"

  # Stop the container
  docker stop $container_id
  
  # Remove the container
  docker rm $container_id

  echo "Container $container_id has been removed."
else
  echo "No running containers found."
fi
