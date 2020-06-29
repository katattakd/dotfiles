#!/bin/sh
# TODO: Switch back to Alacritty once it gets GLES2 support.

# ----- User customizations ------

# Create config symlinks
sh setup.sh
set -euo pipefail

# Update installed packages
sudo apk -U upgrade -a

# Setup Nix channels
alias addpkg="nix-env -f '<nixpkgs>' -iA"
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --add https://nixos.org/channels/nixos-20.03
nix-channel --update
nix-env -u

# Core system
sudo apk del curl
addpkg coreutils curl gnugrep less man tree # Look into using uutils-coreutils

# Multimedia tools
addpkg exiftool ffmpeg imagemagick_light sox youtube-dl-light

# Networking tools
addpkg iproute nmap wireshark-cli

# Audio tools
addpkg alsaUtils apulse

# Dev tools
addpkg binutils file gcc-unwrapped gnumake patch
addpkg diffutils git rustup

# ClI tweaks
addpkg fish htop neofetch neovim ytop

# GUI things
addpkg grim i3status slurp # TODO: Try i3status-rust
addpkg mpv-unwrapped termite
# Imv is broken, see https://github.com/NixOS/nixpkgs/issues/77653
sudo apk add firefox # Broken on NixOS, see https://github.com/NixOS/nixpkgs/issues/83049

# Finishing touches
sudo rm -r /etc/apk/cache
sudo rm /var/cache/apk/*.apk

# Setup vim-plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ----- System tweaks ------

# Shrink Nix store
nix-collect-garbage -d
nix-store --optimize

# Disable unnecessary services
sudo rc-update del haveged
sudo rc-update del sshd
sudo rc-update del swapfile

# Setup firewall
sudo apk add iptables ip6tables
sudo rc-update add iptables
sudo rc-update add ip6tables
sudo iptables-restore firewall.rules
sudo /etc/init.d/iptables save
sudo ip6tables-restore firewall.rules
sudo /etc/init.d/ip6tables save

echo "Please reboot for changes to take effect."
