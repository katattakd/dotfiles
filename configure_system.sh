#!/bin/sh

# Configure ufw
sudo ufw enable

# Configure NetworkManager
sudo ln -s ~/dotfiles/.config/networkmanager.conf /etc/NetworkManager/conf.d/settings.conf

# Enable networking services
sudo systemctl enable NetworkManager ufw systemd-resolved

# Disable ssh server
sudo systemctl disable sshd
