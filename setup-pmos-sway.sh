#!/bin/sh
# TODO: Switch back to Alacritty once it gets GLES2 support.

# ----- User customizations ------

# Install additional packages
alias addpkg="nix-env -f '<nixpkgs>' -iA"
nix-env -e inetutils binutils-wrapper

addpkg bash coreutils-full unixtools debianutils man ncurses expect	# Coreutils
	nix-env --set-flag priority 11 hostname
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
	addpkg inetutils bridge-utils ipcalc
addpkg microcom setserial						# Serial tools
addpkg apulse alsaUtils beep						# Audio
addpkg parted dosfstools e2fsprogs f2fs-tools cryptsetup hdparm		# Filesystem tools

addpkg fish tree less neovim neofetch					# CLI tweaks
addpkg i3status termite grim slurp mpv firefox-wayland			# GUI things

nix-collect-garbage -d

# Create config symlinks
sh setup.sh

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
