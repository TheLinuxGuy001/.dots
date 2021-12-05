#!/bin/bash

i3-msg "workspace 1"
i3-msg "append_layout $HOME/.config/i3/workspace.json"
kitty cava & librewolf & kitty $HOME/.scripts/rsclock.sh & $HOME/.scripts/spotify.sh &
sleep 1
i3-msg restart
sleep 1
xdotool mousemove 1880 1025
sleep 1
xdotool click 1
sleep 1
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Play
