#!/bin/bash

i3-msg "workspace 1"
i3-msg "append_layout $HOME/.config/i3/workspace.json"
kitty cava & microsoft-edge-stable & kitty $HOME/.scripts/rsclock.sh & $HOME/.scripts/spotify.sh &
sleep 1
i3-msg restart
