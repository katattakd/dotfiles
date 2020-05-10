#!/bin/sh
# TODO: Switch back to Alacritty once it gets GLES2 support.
# TODO: Use rustup package once it gets aarch64 support.
# TODO: Replace most of these commands with .nix configuration.

# Setup before installing Sway
sudo adduser katattakd input
sudo adduser katattakd video
sudo adduser katattakd audio

# Sway
sudo apk add sway xkeyboard-config bash

# Nix setup
sudo apk add curl
sudo mkdir /nix
sudo chown katattakd /nix
curl https://nixos.org/nix/install -o /tmp/install.sh
sh /tmp/install.sh --no-daemon

# Replace Alpine packages with Nix ones
nix-env -i curl git
sudo apk del curl git

# Additional GUI things
nix-env -i i3status swaylock termite grim slurp
niv-env -i firefox imv mpv

# CLI essentials
nix-env -i coreutils htop tree

# Additional CLI things
nix-env -i iproute2 diffutils less

# Fish shell
nix-env -i fish mandoc

# Neovim
nix-env -i neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create config symlinks
sh setup.sh

# Security improvements
sudo rc-update del sshd

# Additional security improvements
sudo apk add ufw ufw-openrc
sudo ufw enable
sudo rc-update add ufw

# FIXME: Wireless improvements
#sudo apk add iwd
#sudo rc-update del wpa_supplicant
#sudo rc-update add iwd
#printf "\n[device]\nwifi.backend=iwd" | sudo tee /etc/NetworkManager/NetworkManager.conf

# CLI multimedia tools
nix-env -i ffmpeg imagemagick sox youtube-dl

# Audio tools
sudo apk add pulseaudio pulseaudio-alsa
nix-env -i pulsemixer alsa-utils

# Software dev tools
nix-env -i binutils file gcc gnumake cargo go

# Networking tools
nix-env -i bind nmap netcat-gnu net-tools

echo "Please reboot for changes to take effect."
