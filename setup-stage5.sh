#!/bin/sh

# Disk tools
sudo pacman -S --asexplicit gparted dosfstools exfat-utils ntfs-3g gpart mtools

# Office tools
sudo pacman -S --asexplicit libreoffice-fresh pstoedit libmythes gst-plugins-base-libs coin-or-mp
sudo pacman -S --asexplicit speedcrunch xcas

# Audio creation/editing tools
sudo pacman -S --asexplicit audacity lmms

# Illustrating tools
sudo pacman -S --asexplicit inkscape krita

# 3D modeling tools
# (Broken on PBP!)
#sudo pacman -S --asexplicit blender

# Image editing tools
sudo pacman -S --asexplicit gimp rawtherapee

# Advanced networking tools
sudo pacman -S --asexplicit wireshark-qt

# Virtualization tools
sudo pacman -S --asexplicit qemu qemu-arch-extra

# SDR tools
# TODO: Add rtl_433 and nrsc5
sudo pacman -S --asexplicit rtl-sdr gqrx


set -euo pipefail

# Remove unused packages
sudo pacman -Rsunc $(pacman -Qtdq)

# Clean package cache
sudo pacman -Sc
