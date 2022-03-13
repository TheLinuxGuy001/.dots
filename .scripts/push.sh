#!/bin/bash

cd ~/dotfiles
pacman -Qqet > packages.list
git add -A && git commit -m 'Changes'
git push -u -f origin main
