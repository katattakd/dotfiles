#!/bin/sh

# Disk tools
sudo pacman -S --asexplicit gparted

# Office tools
sudo pacman -S --asexplicit libreoffice
sudo pacman -S --asexplicit speedcrunch giac

# Audio creation/editing tools
sudo pacman -S --asexplicit audacity lmms

# Illustrating tools
sudo pacman -S --asexplicit inkscape krita

# 3D modeling tools
sudo pacman -S --asexplicit blender

# Image editing tools
sudo pacman -S --asexplicit gimp rawtherapee

# Video creation/editing tools
sudo pacman -S --asexplicit openshot

# Advanced networking tools
sudo pacman -S --asexplicit wireshark

# SDR tools
# TODO: Add rtl_433 and nrsc5
sudo pacman -S --asexplicit rtl-sdr gqrx


set -euo pipefail

# Remove unused packages
sudo pacman -Rsunc $(pacman -Qtdq)

# Clean package cache
sudo pacman -Sc
