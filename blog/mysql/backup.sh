#!/bin/bash
container_name=mysql_blog

#
# Ask MySql root password
#
read -s -p "MySql root password: " MYSQL_ROOT_PASSWORD
echo

docker exec $container_name /usr/bin/mysqldump -u root --password=$MYSQL_ROOT_PASSWORD ghost_db > /var/backups/ghost_db.sql
