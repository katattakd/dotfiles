#!/bin/sh

# Enable NetworkManager
sudo systemctl enable NetworkManager

# Disable bluetooth
sudo systemctl start rfkill-block@bluetooth

# Disable unused systemd components
sudo systemctl disable systemd-networkd
sudo systemctl disable systemd-homed

# Disable SSH
sudo systemctl disable sshd
