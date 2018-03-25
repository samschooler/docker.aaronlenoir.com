#!/bin/sh
docker run --rm -p 80:80 -p 443:443 -v ./etc/letsencrypt:/etc/letsencrypt -v ./var/log/letsencrypt:/var/log/letsencrypt certbot/certbot certonly --standalone --agree-tos -v -c /etc/letsencrypt/cli.ini -d samschooler.me
mkdir /etc/ssl/samschooler.me/
cp ./etc/letsencrypt/live/samschooler.me/*.pem /etc/ssl/samschooler.me/
docker run --rm -p 80:80 -p 443:443 -v ./etc/letsencrypt:/etc/letsencrypt -v ./var/log/letsencrypt:/var/log/letsencrypt certbot/certbot certonly --standalone --agree-tos -v -c /etc/letsencrypt/cli.ini -d sam.ink
mkdir /etc/ssl/sam.ink/
cp ./etc/letsencrypt/live/sam.ink/*.pem /etc/ssl/sam.ink/
