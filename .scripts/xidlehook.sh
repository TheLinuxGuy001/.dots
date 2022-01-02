#!/usr/bin/bash

echo "Starting xidlehook script."
sleep 25

xidlehook \
  --not-when-audio \
  --timer 600 \
    '~/.scripts/lock.sh' \
    '' \
  --timer 300 \
    'systemctl suspend' \
    ''
