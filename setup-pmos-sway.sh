#!/bin/sh
# TODO: Switch back to Alacritty once it gets GLES2 support.

# ----- User customizations ------

# Create config symlinks
sh setup.sh
set -euo pipefail

# Update installed packages
sudo apk -U upgrade -a

# Core system
sudo apk add alpine-sdk coreutils docs postmarketos-base postmarketos-ui-sway
sudo apk add cmd:diff cmd:grep cmd:less cmd:posixtz cmd:tree cmd:usb-devices

# Multimedia tools
sudo apk add cmd:exiv2 cmd:ffmpeg cmd:magick cmd:sox cmd:youtube-dl

# Networking tools
sudo apk add cmd:ip cmd:tshark cmd:nmap nmap-scripts iptables ip6tables

# Audio tools
sudo apk add cmd:alsamixer cmd:pactl cmd:pulsemixer pulseaudio

# Dev tools
sudo apk add cmd:cargo

# ClI tweaks
sudo apk add cmd:fish cmd:neofetch cmd:nvim cmd:htop

# GUI things
sudo apk add cmd:i3status cmd:termite cmd:grim cmd:slurp cmd:mpv cmd:imv firefox

# Finishing touches
sudo rm -r /etc/apk/cache
sudo rm /var/cache/apk/*.apk

# Setup vim-plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ----- System tweaks ------

# Security improvements
sudo rc-update del sshd
sudo ufw enable
sudo rc-update add iptables
sudo rc-update add ip6tables

sudo iptables-restore firewall.rules
sudo /etc/init.d/iptables save
sudo ip6tables-restore firewall.rules
sudo /etc/init.d/ip6tables save

echo "Please reboot for changes to take effect."
