#!/bin/bash
SCRIPT_ROOT="$(dirname "${BASH_SOURCE[0]}")"
cd $SCRIPT_ROOT 
cd ./blog/mysql
./up.sh
cd ../ghost
./up.sh
cd ../../nginx
./up.sh
cd ..
