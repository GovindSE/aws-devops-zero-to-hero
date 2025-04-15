#!/bin/bash
set -e

# Stop the running container (if any)
containerid= sudo docker ps | awk 'NR>1 {print $1}'

if[ $containerid] then:
echo "docker present"

sudo docker rm -f $containerid
 echo "removed"

 else:

 echo "no running container"
