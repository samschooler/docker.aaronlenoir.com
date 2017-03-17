#!/bin/bash
set -u

container_name=mysql_blog

docker stop $container_name
docker rm $container_name

read -p "Permanently remove data? [N/y] " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Removing data directory."
  rm -rf data
fi
