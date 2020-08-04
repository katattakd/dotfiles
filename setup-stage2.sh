#!/bin/sh
set -euo pipefail

# Program documentation
sudo pacman -D --asexplicit --noconfirm man-db man-pages texinfo

# Disk essentials
sudo pacman -D --asexplicit --noconfirm ncdu parted

# Networking essentials
sudo pacman -S --asexplicit --noconfirm networkmanager ufw
sudo systemctl enable --now NetworkManager ufw
sudo ufw enable

# Audio essentials
sudo pacman -S --asexplicit --noconfirm alsa-utils
