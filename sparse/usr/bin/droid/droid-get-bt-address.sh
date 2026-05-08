#!/bin/sh
[ -f /var/lib/bluetooth/board-address ] && exit 0
find /var/lib/bluetooth -mindepth 1 -maxdepth 1 -type d  -exec basename {} \; | awk -F: -vOFS=: '{print $6,$5,$4,$3,$2,$1}' > /var/lib/bluetooth/board-address
