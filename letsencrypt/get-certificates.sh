#!/bin/sh
docker run --rm -p 80:80 -p 443:443 -v $PWD/letsencrypt/etc/letsencrypt:/etc/letsencrypt -v $PWD/letsencrypt/var/log/letsencrypt:/var/log/letsencrypt certbot/certbot certonly --standalone --agree-tos -v -c /etc/letsencrypt/cli.ini -d samschooler.me
mkdir /etc/ssl/samschooler.me/
cp $PWD/letsencrypt/etc/letsencrypt/live/samschooler.me/*.pem /etc/ssl/samschooler.me/
docker run --rm -p 80:80 -p 443:443 -v $PWD/letsencrypt/etc/letsencrypt:/etc/letsencrypt -v $PWD/letsencrypt/var/log/letsencrypt:/var/log/letsencrypt certbot/certbot certonly --standalone --agree-tos -v -c /etc/letsencrypt/cli.ini -d sam.ink
mkdir /etc/ssl/sam.ink/
cp $PWD/letsencrypt/etc/letsencrypt/live/sam.ink/*.pem /etc/ssl/sam.ink/
