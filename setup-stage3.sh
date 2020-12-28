#!/bin/sh
set -euo pipefail

# NetworkManger optional deps
sudo pacman -S --asdeps --noconfirm dnsmasq bluez rp-pppoe ppp modemmanager mobile-broadband-provider-info usb_modeswitch iwd

# Sway + essential packages
sudo pacman -S --asexplicit --noconfirm sway i3status grimshot brightnessctl noto-fonts xorg-xev
sudo pacman -S --asdeps --noconfirm swaylock wl-clipboard xorg-server-xwayland
sudo pacman -S --asdeps --noconfirm noto-fonts-cjk noto-fonts-emoji noto-fonts-extra

# CLI customizations
sudo pacman -S --asexplicit --noconfirm exa fd fish neovim ripgrep
sudo pacman -S --asdeps --noconfirm python pkgfile
sudo pacman -S --asdeps --noconfirm python-neovim wl-clipboard

# Configure vim-plugged
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"

# GUI essentials
sudo pacman -S --asexplicit --noconfirm imv mpv termite
sudo pacman -S --asexplicit --noconfirm firefox firefox-ublock-origin firefox-extension-privacybadger
sudo pacman -S --asdeps --noconfirm speech-dispatcher hunspell-en_US
