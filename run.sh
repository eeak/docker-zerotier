#!/bin/bash
echo "attempting to join zerotier network $ZEROTIER_NETWORK"
service zerotier-one start
sleep 5
zerotier-cli join $ZEROTIER_NETWORK
# then just run indefinitely
tail -f /dev/null
