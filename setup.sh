#!/bin/sh
mkdir -p ~/.config ~/.ssh ~/Downloads ~/Desktop

ln -sf /dev/null ~/.ash_history
ln -sf /dev/null ~/.bash_history
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.ssh/* ~/.ssh
ln -s ~/dotfiles/.mozilla/user.js $(ls -d ~/.mozilla/firefox/*.default-default/)

ln -s ~/Downloads ~/Desktop/
ln -s ~/.config ~/Desktop/
ln -s ~/.mozilla/firefox ~/.config/firefox
ln -s ~/.asoundrc ~/.config/
ln -s ~/dotfiles ~/Desktop/

sudo ln -s ~/dotfiles/local.d/cpu_balanced.start /etc/local.d/
sudo chmod +x /etc/local.d/cpu_balanced.start
