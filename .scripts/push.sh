#!/bin/bash

echo "What comment do you want to add?"
read comment
cd ~/dotfiles && pacman -Qqe > packages.list && git add -A && git commit -m '$comment' && git push -u -f origin main 
