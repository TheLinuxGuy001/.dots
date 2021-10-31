#!/bin/bash

cd ~/dotfiles && pacman -Qe|cut -f 1 -d " " > packages.list && git add -A && git commit -m 'Tweaks' && git push -u -f origin main 
