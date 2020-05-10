#!/bin/sh
mkdir -p ~/.config ~/.ssh ~/Downloads ~/Desktop

ln -s /dev/null ~/.ash_history
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.ssh/* ~/.ssh
ln -s ~/dotfiles/.mozilla/user.js $(ls -d ~/.mozilla/firefox/*/)user.js

ln -s ~/Downloads ~/Desktop/
ln -s ~/.config ~/Desktop/
ln -s ~/.mozilla/firefox ~/.config/firefox
ln -s ~/dotfiles ~/Desktop/
