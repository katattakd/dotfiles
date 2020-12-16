#!/bin/sh
set -euo pipefail

# NetworkManger optional deps
sudo pacman -S --asdeps --noconfirm dnsmasq bluez ppp modemmanager iwd

# Sway + essential packages
sudo pacman -S --asexplicit --noconfirm sway i3status grimshot noto-fonts xorg-xev
sudo pacman -S --asdeps --noconfirm swaylock wl-clipboard xorg-server-xwayland
sudo pacman -S --asdeps --noconfirm noto-fonts-cjk noto-fonts-emoji noto-fonts-extra

# CLI customizations
sudo pacman -S --asexplicit --noconfirm exa fish neovim
sudo pacman -S --asdeps --noconfirm python pkgfile
sudo pacman -S --asdeps --noconfirm python-neovim wl-clipboard
curl -Lo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# GUI essentials
sudo pacman -S --asexplicit --noconfirm imv mpv termite
sudo pacman -S --asexplicit --noconfirm firefox
sudo pacman -S --asdeps --noconfirm pulseaudio speech-dispatcher hunspell-en_US
