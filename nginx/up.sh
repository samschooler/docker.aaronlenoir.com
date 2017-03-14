#!/bin/sh
docker run --rm -v $PWD/nginx:/etc/nginx:ro -p 80:80 --link news-reader:news-reader --name nginx_proxy -d nginx
