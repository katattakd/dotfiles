#!/bin/sh
# TODO: Switch back to Alacritty once it gets GLES2 support.

# Setup before installing Sway
sudo adduser katattakd input
sudo adduser katattakd video
sudo adduser katattakd audio

# Sway
sudo apk add sway xkeyboard-config bash

# ----- User customizations ------

# Create config symlinks
sh setup.sh

# Nix setup
sudo apk add curl
sudo mkdir /nix
sudo chown katattakd /nix
curl https://nixos.org/nix/install -o /tmp/install.sh
sh /tmp/install.sh --no-daemon

# Install additional packages
alias addpkg="nix-env -f '<nixpkgs>' -iA"
addpkg i3status swaylock termite grim slurp mpv firefox-wayland		# GUI things
addpkg coreutils-full curlFull htop tree gitMinimal diffutils less	# CLI essentials
addpkg fish mandoc neovim neofetch					# CLI tweaks
addpkg ffmpeg-full imagemagickBig sox youtube-dl exiftool		# Multimedia tools
addpkg apulse alsaUtils							# Audio
addpkg binutils file automake gnumake rustup go				# Dev tools
	nix-env --set-flag priority 0 binutils
	addpkg gcc
addpkg iproute dnsutils nmap netcat-gnu nettools			# Networking tools

# Remove unused dependencies
sudo apk del curl git

# Setup vim-plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ----- System tweaks ------

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

echo "Please reboot for changes to take effect."
