#!/bin/bash
SCRIPT_ROOT="$(dirname "${BASH_SOURCE[0]}")"
cd $SCRIPT_ROOT
cd blog/ghost
./down.sh
cd ../mysql
./down.sh
cd ../..
./nginx/down.sh
cd ../..
