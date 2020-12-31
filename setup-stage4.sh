#!/bin/sh

# Font extras
sudo pacman -S --asdeps noto-fonts-cjk noto-fonts-emoji noto-fonts-extra

# Networking tools
sudo pacman -S --asexplicit bind-tools mtr nmap

# Media encoding tools
sudo pacman -S --asexplicit perl-image-exiftool ffmpeg imagemagick sox youtube-dl
sudo pacman -S --asdeps ghostscript imagemagick-doc

# Developer tools
sudo pacman -S --asexplicit base-devel rustup
sudo pacman -S --asdeps lldb gdb
git config --global color.ui auto

# Setup rustup
rustup toolchain install stable
rustup toolchain install beta
rustup toolchain install nightly
rustup default beta
