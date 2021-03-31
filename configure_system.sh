#!/bin/sh

# Configure networking
sudo systemctl enable NetworkManager
sudo systemctl disable systemd-networkd

# Disable SSH (Manjaro [ARM] specific)
sudo systemctl disable sshd

