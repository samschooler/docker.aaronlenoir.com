#!/bin/sh
cd blog/ghost
./down.sh
cd ../mysql
./down.sh
cd ../..
./nginx/down.sh
./news-reader/down.sh
cd ../..
