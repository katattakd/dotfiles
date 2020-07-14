#!/bin/sh
# FIXME: Use Alacritty instead of Termite.
# - STATUS: Waiting for upstream fix.
# - https://github.com/alacritty/alacritty/issues/128
# FIXME: Get Imv working.
# - STATUS: Waiting on upstream fix to be merged.
# - https://github.com/NixOS/nixpkgs/issues/77653
# - https://github.com/NixOS/nixpkgs/pull/92708
# FIXME: Install Firefox/Krita through Nix.
# - STATUS: Waiting for upstream fix.
# - https://github.com/NixOS/nixpkgs/issues/83049
# - https://github.com/NixOS/nixpkgs/pull/83249#issuecomment-605408317
# FIXME: Get Anbox working.
# - STATUS: Waiting on fix for PBP kernel.
# - https://gitlab.com/postmarketOS/pmaports/-/issues/327
# FIXME: Get RTL-SDR working.
# - STATUS: Need additional troubleshooting.
# Additional issues to watch:
# - https://gitlab.com/postmarketOS/pmbootstrap/-/issues/1863
# - https://bugzilla.mozilla.org/show_bug.cgi?id=1422891
# - https://gitlab.com/postmarketOS/pmbootstrap/-/issues/1941
# - https://gitlab.com/postmarketOS/pmaports/-/issues/628
# - https://github.com/rust-lang/rust/issues/69525

# ----- User customizations ------

# Create config symlinks
sh setup.sh
set -euo pipefail

# Update installed packages
sudo apk -U upgrade -a
nix-channel --update
nix-env -u

alias addpkg="nix-env -f '<nixpkgs>' -iA"

# Media encoding tools
addpkg exiv2 ffmpeg imagemagick_light sox youtube-dl-light

# Office tools
#addpkg libreoffice speedcrunch giac-with-xcas

# Media editing tools
#addpkg ardour gimp inkscape openshot-qt rawtherapee

# Pentesting tools
#addpkg hashcat metasploit thc-hydra wrk

# Scanning tools
#addpkg dnsrecon nmap theharvester wireshark

# SDR tools
# TODO: Figure out why this isn't working properly.
#echo "
## For rtl-sdr
#blacklist dvb_usb_rtl28xxu
#blacklist dvb_usb_v2" | sudo tee -a /etc/modprobe.d/blacklist.conf
#addpkg gqrx nrsc5 rtl_433 rtl_sdr

# Disk tools
#addpkg gparted nwipe

# Dev tools
addpkg curl git less man
addpkg binutils file gcc-unwrapped gnumake gnupatch rustup

# ClI tooks
addpkg alsaUtils curlie duc exa fish htop neofetch neovim ripgrep ytop

# GUI essentials
addpkg i3status sway-contrib.grimshot
addpkg mpv-unwrapped termite
addpkg apulse firefox
#sudo apk add firefox

# Setup rustup
#rustup toolchain install stable-aarch64-unknown-linux-gnu
#rustup toolchain install stable-x86_64-unknown-linux-gnu
# NOTE: To view documentation, open the below link.
# file:///home/kat/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/share/doc/rust/html/index.html

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

# Disable SSH
sudo rc-update del sshd

# Setup firewall
#sudo apk add iptables ip6tables
#sudo rc-update add iptables
#sudo rc-update add ip6tables
#sudo iptables-restore firewall.rules
#sudo /etc/init.d/iptables save
#sudo ip6tables-restore firewall.rules
#sudo /etc/init.d/ip6tables save

echo "Please reboot for changes to take effect."
