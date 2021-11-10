#!/bin/bash

cd ~/dotfiles && pacman -Qei | awk '/^Name/ { name=$3 } /^Groups/ { if ( $3 != "base" && $3 != "base-devel" ) { print name } }' > packages.list && git add -A && git commit -m 'Tweaks' && git push -u -f origin main 
