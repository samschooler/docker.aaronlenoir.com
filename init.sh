#!/bin/bash
SCRIPT_ROOT="$(dirname "${BASH_SOURCE[0]}")"
cd $SCRIPT_ROOT
./firewall/configure.sh
./firewall/enable.sh
./letsencrypt/get-certificates.sh
./up.sh