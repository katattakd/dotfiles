#!/bin/sh
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.ssh/* ~/.ssh
ln -s ~/dotfiles/.bash* ~
sudo ln -s $HOME/dotfiles/.mozilla/autoconfig.js /usr/lib/firefox/defaults/pref/autoconfig.js
sudo ln -s $HOME/dotfiles/.mozilla/firefox.cfg /usr/lib/firefox/firefox.cfg
