#!/bin/sh
docker run --rm nginx nginx -V
./down.sh
docker run --rm -v $PWD/nginx:/etc/nginx:ro -v /etc/ssl/samschooler.me:/etc/ssl/samschooler.me -v /etc/ssl/sam.ink:/etc/ssl/sam.ink -p 80:80 -p 443:443 --link ghost:ghost --name nginx_proxy nginx 

