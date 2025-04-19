#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull govinds1209/demoapp

# Run the Docker image as a container
docker run -d -p 5000:5000 govinds1209/demoapp
