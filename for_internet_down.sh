#!/bin/bash
#

echo "What do you want to check?"

read domain

#While loop to check if the domain is reachable

while true
do
  if ping -q -c 2 -W 1 $domain >/dev/null; then
    echo "The domain is 200"
    break
  else
    echo "$domain is down"
  fi
sleep 2
done

