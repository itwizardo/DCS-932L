#!/bin/sh
# reload web server alphapd
export LD_LIBRARY_PATH=/lnl
killall -q alphapd
sleep 1
alphapd &


