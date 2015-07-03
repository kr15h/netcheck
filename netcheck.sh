#!/bin/bash

# This script pings the gateway machine and if it does not respond, 
# the networking service is restarted. Customize by changing the ip variable.

while :
do
  ip=192.168.1.1
  echo "pinging ip $ip"
  ping -c 1 $ip
  if [ $? -eq 0 ] ; then
    echo "Network ok"
  else
    echo "Network not ok. Restarting networking..."
    sudo /etc/init.d/networking stop
    sudo /etc/init.d/networking start
  fi
  sleep 5
done
