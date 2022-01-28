#!/bin/bash

i3-msg "workspace 1"
i3-msg "append_layout $HOME/.config/i3/workspace.json"
kitty cava & librewolf & kitty $HOME/.scripts/rsclock.sh & $HOME/.scripts/spotify.sh &
sleep 1
i3-msg reload
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Play
notify-send 'Welcome.' 'rice loaded.'
