#!/bin/bash
set -e
set -u

container_name=mysql_blog

sudo docker stop $container_name
sudo docker rm $container_name

./configure.sh
