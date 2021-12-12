#!/bin/bash

cd ~/dotfiles && pacman -Qqe > packages.list && git add -A && git commit -m 'Tweaks' && git push -u -f origin main 
