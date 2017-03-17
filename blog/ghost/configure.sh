#!/bin/bash

set -u
set -e

. ./scripts/settings.sh

echo Creating data directory

if [ ! -d data ]; then
  mkdir data
  mkdir data/$container_name
  mkdir data/$container_name/var
  mkdir data/$container_name/var/lib
fi

echo Prepare ghost database
echo Make sure $mysql_container_name container is running.

read -s -p "SQL user Password: " MYSQL_USER_PASSWORD
echo

escaped_password=${MYSQL_USER_PASSWORD/\'/\\\'}
sed -e "s/{PASSWORD}/$escaped_password/" config/create_db.sql.template > config/create_db.sql

echo Running config/create_db.sql on $mysql_container_name
docker run -it --link $mysql_container_name:mysql --rm -v $PWD/config:/tmp/config mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD" < /tmp/config/create_db.sql'

rm config/create_db.sql

echo "Preparing ghost configuration ..."

sed -e "s/{PASSWORD}/$escaped_password/" -e "s/{HOSTNAME}/$hostname/" config/config.js.template > config/config.js

echo "Getting theme ..."
if [ ! -d data/$container_name/var/lib/ghost ]; then
  mkdir data/$container_name/var/lib/ghost
  git clone https://github.com/AaronLenoir/Casper.git data/$container_name/var/lib/ghost/themes/casper-light
fi
