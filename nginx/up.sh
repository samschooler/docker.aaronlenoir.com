#!/bin/sh
docker run --rm -v $PWD/nginx:/etc/nginx:ro -v /etc/ssl/news.aaronlenoir.com:/etc/ssl/news.aaronlenoir.com -p 80:80 -p 443:443 --link news-reader:news-reader --name nginx_proxy -d nginx 
