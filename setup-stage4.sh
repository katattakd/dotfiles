#!/bin/sh

# Package tools
sudo pacman -S --asexplicit pamac
sudo pacman -S --asexplicit lostfiles

# Xwayland
sudo pacman -S --asexplicit xorg-server-xwayland

# Monitoring tools
sudo pacman -S --asexplicit htop
sudo pacman -S --asexplicit neofetch
sudo pacman -S --asexplicit ytop

# Disk tools
sudo pacman -S --asexplicit ncdu
sudo pacman -S --asexplicit gparted

# Media encoding tools
sudo pacman -S --asexplicit exiv2
sudo pacman -S --asexplicit ffmpeg
sudo pacman -S --asexplicit imagemagick
sudo pacman -S --asexplicit sox
sudo pacman -S --asexplicit youtube-dl

# Office tools
sudo pacman -S --asexplicit libreoffice
sudo pacman -S --asexplicit speedcrunch
sudo pacman -S --asexplicit giac

# Audio creation/editing tools
sudo pacman -S --asexplicit audacity
sudo pacman -S --asexplicit lmms

# Illustrating tools
sudo pacman -S --asexplicit inkscape
sudo pacman -S --asexplicit krita

# Image editing tools
sudo pacman -S --asexplicit gimp
sudo pacman -S --asexplicit rawtherapee

# Video creation/editing tools
sudo pacman -S --asexplicit blender
sudo pacman -S --asexplicit openshot

# Developer tools
# TODO: Add curlie
sudo pacman -S --asexplicit go
sudo pacman -S --asexplicit rustup
git config --global color.ui auto

# Setup rustup
#rustup toolchain install stable-aarch64-unknown-linux-gnu
#rustup toolchain install stable-x86_64-unknown-linux-gnu
# NOTE: To view documentation, open the below link.
# file:///home/kat/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/share/doc/rust/html/index.html

# Advanced networking tools
# TODO: Add wrk
sudo pacman -S --asexplicit nmap
sudo pacman -S --asexplicit wireshark

# SDR tools
# TODO: Add rtl_433 and nrsc5
sudo pacman -S --asexplicit rtl-sdr
sudo pacman -S --asexplicit gqrx
