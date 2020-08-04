#!/bin/sh
set -euo pipefail

# Package tools
sudo pacman -S --asexplicit --noconfirm pamac-cli lostfiles

# Networking tools
sudo pacman -S --asexplicit --noconfirm bind-tools dnsmasq nmap wireshark-cli

# Monitoring tools
sudo pacman -S --asexplicit --noconfirm htop neofetch ytop

# Media encoding tools
sudo pacman -S --asexplicit --noconfirm exiv2 ffmpeg ghostscript imagemagick imagemagick-doc sox youtube-dl

# Developer tools
# TODO: Add curlie
sudo pacman -S --asexplicit --noconfirm base-devel hexyl rustup
git config --global color.ui auto

# Setup rustup
rustup toolchain install stable-aarch64-unknown-linux-gnu
rustup toolchain install stable-x86_64-unknown-linux-gnu
# NOTE: To view documentation, open the below link.
# file:///home/kat/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/share/doc/rust/html/index.html

