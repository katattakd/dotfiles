#!/bin/sh

# Configure networking
sudo systemctl enable NetworkManager
sudo systemctl disable systemd-networkd
sudo ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

# Disable SSH (Manjaro [ARM] specific)
sudo systemctl disable sshd

