#!/bin/bash
. ./scripts/settings.sh
docker run --rm --name $container_name -v $PWD/data/$container_name/var/lib/ghost:/var/lib/ghost -v $PWD/config/config.js:/var/lib/ghost/config.js -e "NODE_ENV=production" --link $mysql_container_name:mysql -d ghost
