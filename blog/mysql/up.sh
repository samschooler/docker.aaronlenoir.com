#!/bin/bash
container_name=mysql_blog
docker start $container_name
docker run --rm --link $container_name:mysql digit/wait-for-mysql
