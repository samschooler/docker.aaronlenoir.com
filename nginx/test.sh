#!/bin/sh
docker run --rm nginx nginx -V
./down.sh
docker run --rm -v /root/sleepy:/sleepy:ro -v $PWD/nginx:/etc/nginx:ro -v /etc/ssl/news.aaronlenoir.com:/etc/ssl/news.aaronlenoir.com -v /etc/ssl/blog.aaronlenoir.com:/etc/ssl/blog.aaronlenoir.com -p 80:80 -p 443:443 --link news-reader:news-reader --link ghost:ghost --name nginx_proxy nginx 

