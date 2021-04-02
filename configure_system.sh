#!/bin/sh

# Configure networking
sudo systemctl enable NetworkManager systemd-resolved
sudo systemctl disable systemd-networkd
sudo ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

