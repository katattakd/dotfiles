#!/bin/sh
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.ssh/* ~/.ssh
ln -s ~/dotfiles/.bash* ~
ln -s ~/dotfiles/.mozilla/user.js $(ls -d ~/.mozilla/firefox/*/)user.js
