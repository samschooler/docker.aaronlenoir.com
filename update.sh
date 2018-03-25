#!/bin/sh
docker pull nginx
docker pull ghost
echo "Updating ghost theme ..."
git -C blog/ghost/data/ghost/var/lib/ghost/themes/casper-light/ pull
