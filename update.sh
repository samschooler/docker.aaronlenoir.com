#!/bin/sh
docker pull nginx
docker pull aaronlenoir/news-reader
./down.sh
./up.sh
