#!/bin/bash
set -e

# Get the container ID of the running container (if any)
containerid=$(sudo docker ps -q)

if [ -n "$containerid" ]; then
  echo "Stopping and removing container: $containerid"
  sudo docker rm -f "$containerid"
  echo "Removed container $containerid"
else
  echo "No running containers to remove."
fi
