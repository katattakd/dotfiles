#!/bin/sh

# Configure networking
sudo systemctl enable NetworkManager systemd-resolved iwd
sudo systemctl disable systemd-networkd
sudo ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
printf '[device]\nwifi.backend=iwd\n' | sudo tee /etc/NetworkManager/conf.d/wifi_backend.conf

# Configure automatic pacman cache management
sudo systemctl enable paccache.timer

# Configure system flatpak
sudo rm -rf /var/lib/flatpak
sudo flatpak remote-delete --system flathub

# Lock root user
sudo passwd -ld root
sudo usermod -s /usr/sbin/nologin root
sudo sh -c "rm -r /root/{*,.*}"
