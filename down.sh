#!/bin/sh
./nginx/down.sh
./news-reader/down.sh
cd blog/ghost
./down.sh
cd ../mysql
./down.sh
cd ../..
