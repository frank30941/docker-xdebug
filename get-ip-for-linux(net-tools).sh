#!/bin/bash
IP_ADDRESS=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
echo "xdebug.remote_host=$IP_ADDRESS">>./php7-xdebug/xdebug.ini