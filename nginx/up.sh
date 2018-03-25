#!/bin/sh
docker run --rm -v $PWD/nginx/nginx:/etc/nginx:ro -v /etc/ssl/samschooler.me:/etc/ssl/samschooler.me -v /etc/ssl/sam.ink:/etc/ssl/sam.ink -v $PWD/data/var/www:/var/www -v $PWD/nginx/nginx/mime.types:/etc/nginx/mime.types -p 80:80 -p 443:443 --link ghost:ghost --name nginx_proxy -d nginx
