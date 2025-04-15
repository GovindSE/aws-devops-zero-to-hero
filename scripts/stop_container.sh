#!/bin/bash
set -e

containerid=$(sudo docker ps | awk 'NR>1 {print $1}')

if [ "$containerid" ]; then
  sudo docker rm -f "$containerid"
  echo "Removed container $containerid"
else
  echo "No running containers to remove."
fi
