#!/usr/bin/env bash

xidlehook \
  --not-when-fullscreen \
  --not-when-audio \
  --timer 600 \
    '~/.scripts/lock.sh' \
    '' \
  --timer 600 \
    'systemctl suspend' \
    ''
