#!/bin/sh

# Disk tools
sudo pacman -S --asexplicit gparted
sudo pacman -S --asdeps dosfstools jfsutils f2fs-utils btrfs-progs exfat-utils ntfs-3g reiserfsprogs udftools xfsprogs nilfs-utils gpart mtools

# Office tools
sudo pacman -S --asexplicit libreoffice-fresh
sudo pacman -S --asdeps jre-openjdk jdk-openjdk pstoedit libmythes beanshell libwpg sane unixodbc gst-plugins-base-libs libpaper postgresql-libs mariadb-libs coin-or-mp
sudo pacman -S --asexplicit speedcrunch xcas
sudo pacman -S --asdeps perl

# Audio creation/editing tools
sudo pacman -S --asexplicit audacity lmms

# Illustrating tools
sudo pacman -S --asexplicit inkscape krita
sudo pacman -S --asdeps fig2dev pstoedit python-lxml python-numpy scour texlive-core
sudo pacman -S --asdeps poppler-qt5 opencolorio krita-plugin-gmic kseexpr kimageformats

# 3D modeling tools
# (Broken on PBP!)
#sudo pacman -S --asexplicit blender

# Image editing tools
sudo pacman -S --asexplicit gimp rawtherapee
sudo pacman -S --asdeps gutenprint poppler-glib alsa-lib curl ghostscript

# Advanced networking tools
sudo pacman -S --asexplicit wireshark-qt

# Virtualization tools
sudo pacman -S --asexplicit qemu
sudo pacman -S --asdeps qemu-arch-extra samba qemu-block-iscsi qemu-block-gluster

# SDR tools
# TODO: Add rtl_433 and nrsc5
sudo pacman -S --asexplicit rtl-sdr gqrx


set -euo pipefail

# Remove unused packages
sudo pacman -Rsunc $(pacman -Qtdq)

# Clean package cache
sudo pacman -Sc
