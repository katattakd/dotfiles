#!/bin/sh

# Configure ufw
sudo ufw enable

# Enable automatic package cache clean-up
sudo systemctl enable paccache.timer

# Enable networking services
sudo systemctl enable NetworkManager ufw

# Disable bluetooth
sudo systemctl start rfkill-block@bluetooth

# Disable SSH
sudo systemctl disable sshd
