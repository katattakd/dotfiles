#!/bin/sh
mkdir -p ~/.config ~/.ssh ~/Downloads ~/Desktop

ln -sf /dev/null ~/.ash_history
ln -sf /dev/null ~/.bash_history
mkdir -p ~/.config/pulse
ln -s ~/dotfiles/.config/pulse/* ~/.config/pulse
ln -s ~/dotfiles/.config/* ~/.config
ln -s ~/dotfiles/.*rc ~/
ln -s ~/dotfiles/.ssh/* ~/.ssh
ln -s ~/dotfiles/.bashrc ~/.bashrc
echo ~/.mozilla/firefox/*.default* | xargs -n 1 ln -s ~/dotfiles/.mozilla/user.js

ln -sf ~/.bashrc ~/.bash_profile
rm ~/.bash_logout
ln -s ~/Downloads ~/Desktop/
ln -s ~/.config ~/Desktop/
ln -s ~/.mozilla/firefox ~/.config/firefox
ln -s ~/dotfiles ~/Desktop/

sudo systemctl enable systemd-resolved --now
sudo ln -s ~/dotfiles/.config/networkmanager.conf /etc/NetworkManager/conf.d/settings.conf
