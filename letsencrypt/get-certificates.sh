#!/bin/sh
docker run --rm -p 80:80 -p 443:443 -v $PWD/etc/letsencrypt:/etc/letsencrypt -v $PWD/var/log/letsencrypt:/var/log/letsencrypt certbot/certbot certonly --standalone --agree-tos -v -c /etc/letsencrypt/cli.ini -d samschooler.me
cp $PWD/etc/letsencrypt/live/samschooler.me/*.pem /etc/ssl/samschooler.me/
docker run --rm -p 80:80 -p 443:443 -v $PWD/etc/letsencrypt:/etc/letsencrypt -v $PWD/var/log/letsencrypt:/var/log/letsencrypt certbot/certbot certonly --standalone --agree-tos -v -c /etc/letsencrypt/cli.ini -d sam.ink
cp $PWD/etc/letsencrypt/live/sam.ink/*.pem /etc/ssl/sam.ink/
