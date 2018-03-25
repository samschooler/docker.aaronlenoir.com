#!/bin/bash
SCRIPT_ROOT="$(dirname "${BASH_SOURCE[0]}")"
cd $SCRIPT_ROOT
./blog/up.sh
./nginx/up.sh
