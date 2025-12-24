#!/bin/bash

while true; do
  echo "Codespace actif à $(date)" >> /tmp/keepalive.log
  curl -s https://github.com > /dev/null
  sleep 240
done