#!/bin/sh

# Configure networking
sudo systemctl enable NetworkManager systemd-resolved
sudo systemctl disable systemd-networkd
sudo ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

# Configure automatic maintenance tasks
sudo systemctl enable paccache.timer logrotate.timer

# Configure system flatpak
sudo rm -rf /var/lib/flatpak
sudo flatpak remote-delete --system flathub

# Lock root user
sudo passwd -ld root
sudo usermod -s /usr/sbin/nologin root
sudo sh -c "rm -r /root/{*,.*}"
