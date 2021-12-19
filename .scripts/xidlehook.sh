#!/usr/bin/env bash

xidlehook \
  --not-when-audio \
  --timer 600 \
    '~/.scripts/lock.sh' \
    '' \
  --timer 300 \
    'loginctl suspend' \
    ''
