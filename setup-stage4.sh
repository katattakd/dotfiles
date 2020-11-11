#!/bin/sh
set -euo pipefail

# Package tools
sudo pacman -S --asexplicit --noconfirm pamac-cli lostfiles

# Networking tools
sudo pacman -S --asexplicit --noconfirm bind-tools nmap

# Monitoring tools
sudo pacman -S --asexplicit --noconfirm htop neofetch ytop

# Media encoding tools
sudo pacman -S --asexplicit --noconfirm exiv2 ffmpeg imagemagick imagemagick-doc sox youtube-dl

# Developer tools
# TODO: Add curlie
sudo pacman -S --asexplicit --noconfirm base-devel hexyl rustup
git config --global color.ui auto

# Setup rustup
rustup toolchain install stable
rustup toolchain install nightly
rustup default nightly
