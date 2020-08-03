#!/bin/sh
set -euo pipefail

# Sway + essential packages
sudo pacman -S --asexplicit --noconfirm sway i3status grimshot termite

# CLI customizations
sudo pacman -S --asexplicit --noconfirm exa fish neovim
curl -Lo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# GUI essentials
sudo pacman -S --asexplicit --noconfirm imv mpv termite
sudo pacman -S --asexplicit --noconfirm firefox
