#!/bin/sh
docker run --rm -p 80:80 -p 443:443 -v $PWD/etc/letsencrypt:/etc/letsencrypt -v $PWD/var/log/letsencrypt:/var/log/letsencrypt certbot/certbot certonly --standalone --agree-tos -v -c /etc/letsencrypt/cli.ini -d news.aaronlenoir.com
cp $PWD/etc/letsencrypt/live/news.aaronlenoir.com/*.pem /etc/ssl/news.aaronlenoir.com/
docker run --rm -p 80:80 -p 443:443 -v $PWD/etc/letsencrypt:/etc/letsencrypt -v $PWD/var/log/letsencrypt:/var/log/letsencrypt certbot/certbot certonly --standalone --agree-tos -v -c /etc/letsencrypt/cli.ini -d blog.aaronlenoir.com
cp $PWD/etc/letsencrypt/live/blog.aaronlenoir.com/*.pem /etc/ssl/blog.aaronlenoir.com/
