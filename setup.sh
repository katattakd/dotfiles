#!/bin/sh
mkdir -p ~/.config ~/.ssh ~/Downloads ~/Desktop

ln -sf /dev/null ~/.ash_history
ln -sf /dev/null ~/.bash_history
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.ssh/* ~/.ssh
echo ~/.mozilla/firefox/*.default* | xargs -n 1 ln -s ~/dotfiles/.mozilla/user.js

ln -sf ~/.bashrc ~/.bash_profile
rm ~/.bash_logout
ln -s ~/Downloads ~/Desktop/
ln -s ~/.config ~/Desktop/
ln -s ~/.mozilla/firefox ~/.config/firefox
ln -s ~/dotfiles ~/Desktop/

