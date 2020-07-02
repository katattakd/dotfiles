#!/bin/sh
# FIXME: Use Alacritty instead of Termite.
# - https://github.com/alacritty/alacritty/issues/128
# FIXME: Get Imv working.
# - https://github.com/NixOS/nixpkgs/issues/77653
# FIXME: Install Firefox/Krita through Nix.
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

# Setup sway
sudo apk add sway
echo "if [ \"\$(tty)\" = \"/dev/tty1\" ]; then
	XDG_RUNTIME_DIR=\"/tmp\" exec sway
fi" >> ~/.profile

# Update installed packages
sudo apk -U upgrade -a
nix-channel --update
nix-env -u


alias addpkg="nix-env -f '<nixpkgs>' -iA"

# Media encoding tools
addpkg exiftool ffmpeg imagemagick_light sox youtube-dl-light

# Office tools
#addpkg libreoffice speedcrunch giac-with-xcas

# Media editing tools
#addpkg ardour gimp inkscape openshot-qt rawtherapee

# Auditing tools
#addpkg coreutils gnugrep lynis

# Pentesting tools
#addpkg hashcat metasploit thc-hydra wrk

# Scanning tools
#addpkg dnsrecon nmap theharvester wireshark

# Disk tools
addpkg duc
#addpkg gparted nwipe

# Dev tools
addpkg curl git man rustup
addpkg curlie file hexyl
addpkg binutils gcc-unwrapped gnumake gnupatch

# ClI tooks
addpkg alsaUtils exa fish htop neofetch neovim ripgrep ytop

# GUI essentials
addpkg apulse grim i3status mpv-unwrapped slurp termite
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

# Replace Chrony with Busybox NTPd
echo "server 0.pool.ntp.org iburst
server 1.pool.ntp.org iburst
server 2.pool.ntp.org iburst
server 3.pool.ntp.org iburst" | sudo tee /etc/ntp.conf
sudo rc-update add ntpd
sudo rc-update del chronyd

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
