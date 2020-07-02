#!/bin/sh
# FIXME: Use Alacritty instead of Termite.
# - https://github.com/alacritty/alacritty/issues/128
# FIXME: Get Imv working.
# - https://github.com/NixOS/nixpkgs/issues/77653
# FIXME: Install Firefox through Nix.
# - https://github.com/NixOS/nixpkgs/issues/83049
# FIXME: Get Anbox working.
# - https://gitlab.com/postmarketOS/pmaports/-/issues/327
# Additional issues to watch:
# - https://gitlab.com/postmarketOS/pmbootstrap/-/issues/1863
# - https://bugzilla.mozilla.org/show_bug.cgi?id=1422891
# - https://gitlab.com/postmarketOS/pmaports/-/issues/570
# - https://gitlab.com/postmarketOS/pmaports/-/issues/628

# ----- User customizations ------

# Create config symlinks
sh setup.sh
set -euo pipefail

# Update installed packages
sudo apk -U upgrade -a
nix-channel --update
nix-env -u


alias addpkg="nix-env -f '<nixpkgs>' -iA"

# Multimedia tools
addpkg exiftool ffmpeg imagemagick_light sox youtube-dl-light

# Networking tools
addpkg curl nmap wireshark-cli

# Audio tools
addpkg alsaUtils apulse

# Dev tools
addpkg binutils file gcc-unwrapped gnumake gnupatch
addpkg man git rustup

# ClI tweaks
addpkg curlie duc exa fd fish hexyl htop neofetch neovim ripgrep termshark ytop

# GUI things
addpkg grim i3status slurp
addpkg mpv-unwrapped termite
sudo apk add firefox

# Setup git
git config --global color.ui auto

# Setup vim-plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ----- System tweaks ------

# Shrink Nix store
nix-collect-garbage -d
nix-store --optimize

# Disable APK cache
sudo rm -r /etc/apk/cache
sudo rm /var/cache/apk/*.apk

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
