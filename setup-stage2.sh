#!/bin/sh
set -euo pipefail

# Package documentation
sudo pacman -D --asexplicit --noconfirm man-db man-pages texinfo

# Networking essentials
sudo pacman -S --asexplicit --noconfirm bind-tools networkmanager ufw
sudo systemctl enable --now NetworkManager ufw
sudo ufw enable

# Disk essentials
sudo pacman -D --asexplicit --noconfirm parted

# Audio essentials
sudo pacman -S --asexplicit --noconfirm pulsemixer

# Developer essentials
sudo pacman -S --asexplicit --noconfirm base-devel

