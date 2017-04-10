#!/bin/sh
docker pull nginx
docker pull aaronlenoir/news-reader
docker pull mysql
docker pull digit/wait-for-mysql
docker pull ghost
echo "Updating ghost theme ..."
git -C blog/ghost/data/ghost/var/lib/ghost/themes/casper-light/ pull
