#!/bin/sh
# FIXME: Use Alacritty instead of Termite.
# - STATUS: Waiting for upstream fix.
# - https://github.com/alacritty/alacritty/issues/128
# TODO: Get Anbox working.

# Create config symlinks
sh setup.sh
set -euo pipefail

# Update installed packages
sudo pacman -Syu

# Flag unnecessary packages to be removed
sudo pacman -D --asdeps $(pacman -Qqe)

# Core system
sudo pacman -D --asexplicit base manjaro-release manjaro-system openssh sudo
sudo pacman -D --asexplicit ap6256-firmware linux-aarch64 pinebookpro-post-install uboot-pinebookpro zswap-arm # Pinebook Pro specific

# Package documentation
sudo pacman -D --asexplicit man-db man-pages texinfo

# Networking essentials
sudo pacman -S --asexplicit networkmanager ufw
sudo systemctl enable --now NetworkManager ufw
sudo ufw enable

# Audio essentials
sudo pacman -S --asexplicit pulsemixer

# Disk tools
sudo pacman -D --asexplicit ncdu parted
#sudo pacman -S gparted

# Media encoding tools
sudo pacman -S --asexplicit exiv2 ffmpeg imagemagick sox youtube-dl

# Office tools
#sudo pacman -S --asexplicit libreoffice speedcrunch giac

# Audio editing tools
#sudo pacman -S --asexplicit audacity lmms

# Image editing tools
#sudo pacman -S --asexplicit gimp inkscape krita rawtherapee

# Video editing tools
#sudo pacman -S --asexplicit blender openshot

# Advanced networking tools
# TODO: Add wrk
sudo pacman -S --asexplicit bind-tools nmap
#sudo pacman -S --asexplicit wireshark

# SDR tools
# TODO: test this, add nrsc5 and rtl_433
#sudo pacman -S --asexplicit rtl-sdr gqrx

# Dev tools
sudo pacman -S --asexplicit base-devel rustup

# CLI tools
# TODO: Add curlie
sudo pacman -S --asexplicit exa fish htop lostfiles neofetch neovim ytop

# GUI essentials
sudo pacman -S --asexplicit i3status grimshot
sudo pacman -S --asexplicit mpv termite
sudo pacman -S --asexplicit firefox

# Setup rustup
#rustup toolchain install stable-aarch64-unknown-linux-gnu
#rustup toolchain install stable-x86_64-unknown-linux-gnu
# NOTE: To view documentation, open the below link.
# file:///home/kat/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/share/doc/rust/html/index.html

# Setup git
git config --global color.ui auto

# Setup vim-plugged
curl -Lo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Remove unused packages
sudo pacman -Rsunc $(pacman -Qtdq)
sudo pacman -Sc

# Disable SSH
sudo systemctl disable sshd

echo "Please reboot for changes to take effect."
