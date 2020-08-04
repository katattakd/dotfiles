#!/bin/sh
set -euo pipefail

# Sway + essential packages
sudo pacman -S --asexplicit --noconfirm sway swaylock i3status grimshot noto-fonts termite wl-clipboard xorg-server-xwayland

# CLI customizations
sudo pacman -S --asexplicit --noconfirm exa fish neovim
curl -Lo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Pulseaudio
sudo pacman -S --asexplicit --noconfirm pulseaudio-alsa pulsemixer

# GUI essentials
sudo pacman -S --asexplicit --noconfirm imv mpv termite
sudo pacman -S --asexplicit --noconfirm firefox noto-fonts-emoji hunspell-en_US
