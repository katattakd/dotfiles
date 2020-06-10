#!/bin/sh
# TODO: Switch back to Alacritty once it gets GLES2 support.
# TODO: Setup rustup on aarch64 without requiring Nix.

# ----- User customizations ------

# Create config symlinks
sh setup.sh
set -euo pipefail

# Update installed packages
sudo apk -U upgrade -a

# Coreutils
sudo apk add alpine-sdk docs postmarketos-base
sudo apk add cmd:less cmd:pmbootstrap cmd:posixtz cmd:tree cmd:usb-devices

# Text tools
sudo apk add cmd:brotli cmd:diff cmd:grep

# Multimedia tools
sudo apk add cmd:exiftool cmd:ffmpeg cmd:magick cmd:sox cmd:youtube-dl

# Monitoring tools
sudo apk add cmd:htop cmd:powertop

# Networking tools
sudo apk add cmd:dig cmd:ip cmd:tshark cmd:ufw ufw-openrc
sudo apk add cmd:nmap cmd:ncat cmd:nping nmap-scripts

# Audio tools
sudo apk add cmd:alsamixer cmd:pactl cmd:pulseaudio cmd:pulsemixer

# ClI tweaks
sudo apk add cmd:fish cmd:neofetch cmd:nvim

# GUI things
sudo apk add cmd:i3status cmd:termite cmd:grim cmd:slurp cmd:mpv cmd:imv firefox

# Setup rustup
touch ~/.profile

curl https://nixos.org/nix/install -o /tmp/install.sh
sh /tmp/install.sh --no-daemon

source ~/.profile
nix-env -f '<nixpkgs>' -iA rustup
nix-store --optimise
nix-collect-garbage -d

# Setup vim-plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ----- System tweaks ------

# Security improvements
sudo rc-update del sshd
sudo ufw enable
sudo rc-update add ufw

echo "Please reboot for changes to take effect."
