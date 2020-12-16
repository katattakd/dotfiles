#!/bin/sh
set -euo pipefail

# Package tools
sudo pacman -S --asexplicit --noconfirm pamac-cli lostfiles

# Networking tools
sudo pacman -S --asexplicit --noconfirm bind-tools nmap

# Monitoring tools
sudo pacman -S --asexplicit --noconfirm htop neofetch ytop
sudo pacman -S --asdeps --noconfirm lsof strace

# Media encoding tools
sudo pacman -S --asexplicit --noconfirm exiv2 ffmpeg imagemagick sox youtube-dl
sudo pacman -S --asdeps --noconfirm avisynthplus ladspa
sudo pacman -S --asdeps --noconfirm ghostscript libheif libraw librsvg libwebp libwmf libxml2 ocl-icd openexr openjpeg2 djvulibre pango imagemagick-doc
sudo pacman -S --asdeps --noconfirm libao libmad libid3tag wavpack libpulse opus twolame
sudo pacman -S --asdeps --noconfirm rtmpdump atomicparsley python-pycryptodome

# Developer tools
# TODO: Add curlie
sudo pacman -S --asexplicit --noconfirm base-devel hexyl rustup
sudo pacman -S --asdeps --noconfirm lldb gdb
git config --global color.ui auto

# Setup rustup
rustup toolchain install stable
rustup toolchain install beta
rustup toolchain install nightly
rustup default beta
