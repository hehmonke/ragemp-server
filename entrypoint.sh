#!/bin/sh

./setup-conf.sh

echo "Ready"
#tail -f /dev/null
cd /ragemp
./ragemp-server
