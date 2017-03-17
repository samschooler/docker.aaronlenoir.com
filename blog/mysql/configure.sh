#!/bin/bash

set -e
set -u

container_name="mysql_blog"

#
# Ask MySql root password
#
read -s -p "MySql root password: " MYSQL_ROOT_PASSWORD
echo

#
# Create MySql container
#
echo
echo "Creating mysql container"

docker run --name $container_name -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD -v $PWD/data/$container_name/var/lib/mysql:/var/lib/mysql -d mysql

docker run --rm --link $container_name:mysql digit/wait-for-mysql
