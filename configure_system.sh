#!/bin/sh

# Setup NetworkManager
sudo systemctl enable NetworkManager
sudo systemctl disable systemd-networkd

# Disable bluetooth
sudo systemctl start rfkill-block@bluetooth

# Disable SSH
sudo systemctl disable sshd

