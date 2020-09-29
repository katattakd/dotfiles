#!/bin/sh
set -euo pipefail

# Program documentation
sudo pacman -D --asexplicit --noconfirm man-db man-pages
sudo pacman -S --asexplicit --noconfirm texinfo

# Disk essentials
sudo pacman -D --asexplicit --noconfirm ncdu parted

# Networking essentials
sudo pacman -S --asexplicit --noconfirm networkmanager ufw
sudo systemctl enable --now NetworkManager ufw
sudo ufw enable

# Audio essentials
sudo pacman -S --asexplicit --noconfirm alsa-utils
sudo pacman -S --asexplicit --noconfirm pulseaudio-alsa pulsemixer

# USB essentials
sudo pacman -S --asexplicit --noconfirm usbutils
