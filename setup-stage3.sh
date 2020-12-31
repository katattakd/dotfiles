#!/bin/sh
set -euo pipefail

# Fish + config dependencies
sudo pacman -S --asexplicit --noconfirm exa fish ncdu neovim
nvim -u ~/.config/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"

# CLI essentials
sudo pacman -S --asexplicit --noconfirm pamac-cli lostfiles
sudo pacman -S --asexplicit --noconfirm fd ripgrep
sudo pacman -S --asexplicit --noconfirm htop neofetch ytop

# Sway + config dependencies
sudo pacman -S --asexplicit --noconfirm sway i3status grimshot brightnessctl noto-fonts
sudo pacman -S --asdeps --noconfirm swaylock wl-clipboard xorg-server-xwayland

# GUI essentials
sudo pacman -S --asexplicit --noconfirm imv mpv termite xcas
sudo pacman -S --asexplicit --noconfirm firefox firefox-ublock-origin firefox-extension-privacybadger
sudo pacman -S --asdeps --noconfirm hunspell-en_US
