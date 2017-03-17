#!/bin/bash
. ./scripts/settings.sh
docker run --rm --name $container_name -v $PWD/data/$container_name/var/lib/ghost:/var/lib/ghost --link $mysql_container_name:mysql -d ghost
