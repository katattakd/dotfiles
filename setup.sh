#!/bin/sh
mkdir -p ~/.config ~/.ssh
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.ssh/* ~/.ssh
ln -s ~/dotfiles/.mozilla/user.js $(ls -d ~/.mozilla/firefox/*/)user.js
