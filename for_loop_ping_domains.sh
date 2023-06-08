#!/bin/bash
#

for domain in google.com bing.com facebook.com networkchuck.com;
  do
    if ping -q -c 2 -W 1 $domain > /dev/null; then
      echo "Ping to $domain OK"
    else
      echo "Ping to $domain FAILED"
    fi
  done
