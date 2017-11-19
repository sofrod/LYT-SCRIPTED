#!/bin/bash

IP="lyt8266.fritz.box"

if [ $# -eq 1 ]; then
  IP="$1"
fi

watch -n1 "curl http://$IP/log 2>/dev/null | tail -n 40"
