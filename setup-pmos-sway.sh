#!/bin/sh
# TODO: Switch back to Alacritty once it gets GLES2 support.
# TODO: Add imv once it works on Nix aarch64.

# ----- User customizations ------

# Create config symlinks
sh setup.sh

# Install additional packages
alias addpkg="nix-env -f '<nixpkgs>' -iA"
nix-env -e inetutils binutils-wrapper
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --add https://nixos.org/channels/nixos-20.03
nix-channel --update

addpkg coreutils-full unixtools debianutils man man-pages expect	# Coreutils
	nix-env --set-flag priority 11 hostname
addpkg bash ncurses dialog readline less				# Console tools
addpkg dos2unix gawk bc gnused gnugrep ed				# Text tools
addpkg git diffutils openssh						# Git tools
addpkg file gnupatch patchutils findutils libcap sharutils		# File tools
addpkg ffmpeg-full imagemagickBig sox youtube-dl exiftool		# Multimedia tools
addpkg zstd lz4 lzop gzip brotli bzip2 lzma gnutar cpio unzip		# Archive tools
addpkg gcc automake cmake gnumake rustup go				# Dev tools
	nix-env --set-flag priority 9 gcc-wrapper
	addpkg binutils
addpkg kmod pciutils usbutils sysfsutils utillinux kbd lsof		# Kernel tools
addpkg htop procps sysstat powertop					# Monitoring tools
addpkg wget curlFull iproute dnsutils nmap netcat-gnu iptables iputils	# Networking tools
	nix-env --set-flag priority 9 nettools
	addpkg inetutils bridge-utils ipcalc wireshark-cli
addpkg microcom setserial						# Serial tools
addpkg apulse alsaUtils beep						# Audio
addpkg parted dosfstools e2fsprogs mtd-utils cryptsetup hdparm		# Filesystem tools
addpkg fish tree neovim neofetch					# CLI tweaks
addpkg i3status termite grim slurp mpv					# GUI things
	nix-env -f '<nixos-20.03>' -iA firefox

nix-collect-garbage -d

# Setup vim-plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ----- System tweaks ------

# Security improvements
sudo rc-update del sshd

# Additional security improvements
sudo apk add ufw ufw-openrc
sudo ufw enable
sudo rc-update add ufw

# Wireless improvements
sudo apk add iwd
printf "[device]\nwifi.backend=iwd\n" | sudo tee /etc/NetworkManager/conf.d/01-iwd.conf
sudo rc-update del wpa_supplicant
sudo rc-update add iwd

echo "Please reboot for changes to take effect."
