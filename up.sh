#!/bin/sh
cd news-reader
./up.sh
cd ../blog/mysql
./up.sh
cd ../ghost
./up.sh
cd ../../nginx
./up.sh
cd ..
