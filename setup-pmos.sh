#!/bin/sh

# Setup before installing Sway
sudo adduser katattakd input
sudo adduser katattakd video
sudo adduser katattakd audio

# Sway
sudo apk add sway xkeyboard-config

# Additional GUI things
sudo apk add swaylock termite grim slurp
sudo apk add firefox imv mpv

# CLI essentials
sudo apk add coreutils htop util-linux procps

# Additional CLI things
sudo apk add alpine-sdk rust iproute2 diffutils

# Fish shell
sudo apk add fish-tools mandoc less

# Neovim
sudo apk add neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create config symlinks
sh setup.sh

# Security improvements
sudo rc-update del sshd

# Additional security improvements
#sudo apk add ufw ufw-openrc
#sudo ufw enable
#sudo rc-update add ufw

# Wireless improvements
#sudo apk add iwd
#sudo rc-update del wpa_supplicant
#sudo rc-update add iwd

# CLI multimedia tools
sudo apk add ffmpeg imagemagick sox

# Audio tools
#sudo apk add pulseaudio pulseaudio-alsa
#sudo apk add pulsemixer alsa-utils

echo "Please reboot for changes to take effect."
