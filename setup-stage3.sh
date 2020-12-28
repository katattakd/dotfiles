#!/bin/sh
set -euo pipefail

# NetworkManger optional deps
sudo pacman -S --asdeps --noconfirm dnsmasq bluez ppp modemmanager iwd

# Sway + essential packages
sudo pacman -S --asexplicit --noconfirm sway i3status grimshot brightnessctl noto-fonts xorg-xev
sudo pacman -S --asdeps --noconfirm swaylock wl-clipboard xorg-server-xwayland
sudo pacman -S --asdeps --noconfirm noto-fonts-cjk noto-fonts-emoji noto-fonts-extra

# CLI customizations
sudo pacman -S --asexplicit --noconfirm exa fish neovim
sudo pacman -S --asdeps --noconfirm python pkgfile
sudo pacman -S --asdeps --noconfirm python-neovim wl-clipboard

# Configure vim-plugged
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"`

# GUI essentials
sudo pacman -S --asexplicit --noconfirm imv mpv termite
sudo pacman -S --asexplicit --noconfirm firefox
sudo pacman -S --asdeps --noconfirm pulseaudio speech-dispatcher hunspell-en_US
