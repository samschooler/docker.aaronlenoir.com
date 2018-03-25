#!/bin/bash
. $PWD/blog/scripts/settings.sh
docker run --rm --name $container_name -v $PWD/data/$container_name/var/lib/ghost/content:/var/lib/ghost/content -v $PWD/config/config.ghost.json:/var/lib/ghost/config.production.json -e "NODE_ENV=production" -d ghost
