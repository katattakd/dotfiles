#!/bin/sh

# Misc tools
sudo pacman -S --asexplicit xorg-xev

# Disk tools
sudo pacman -S --asexplicit gparted
sudo pacman -S --asdeps dosfstools f2fs-tools exfat-utils ntfs-3g gpart mtools

# Office tools
sudo pacman -S --asexplicit libreoffice-fresh
sudo pacman -S --asdeps jre-openjdk jdk-openjdk pstoedit libmythes beanshell libwpg sane postgresql-libs mariadb-libs coin-or-mp

# Audio creation/editing tools
sudo pacman -S --asexplicit audacity lmms

# Illustrating tools
sudo pacman -S --asexplicit inkscape krita
sudo pacman -S --asdeps opencolorio krita-plugin-gmic kseexpr kimageformats

# 3D modeling tools
# (Broken on PBP!)
#sudo pacman -S --asexplicit blender

# Image editing tools
sudo pacman -S --asexplicit gimp rawtherapee

# Advanced networking tools
sudo pacman -S --asexplicit wireshark-qt

# Virtualization tools
sudo pacman -S --asexplicit qemu
sudo pacman -S --asdeps qemu-arch-extra

# SDR tools
# TODO: Add rtl_433 and nrsc5
sudo pacman -S --asexplicit rtl-sdr gqrx

# GPS tools
sudo pacman -S --asexplicit gpsd

set -euo pipefail

# Remove unused packages
sudo pacman -Rsunc $(pacman -Qtdq)

# Clean package cache
sudo pacman -Sc
