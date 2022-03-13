#!/bin/bash
echo 'Hello, what commit message would you like?'
read msg
cd ~/dotfiles
pacman -Qqet > packages.list
git add -A && git commit -m '$msg'
git push -u -f origin main
