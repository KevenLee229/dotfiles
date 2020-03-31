#!/bin/bash

DOTFILES=~/Projects/dotfiles
cd $DOTFILES

git add .
git add -u
git commit -m "$(date '+%Y-%m-%d')"
git push origin
