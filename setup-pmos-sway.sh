#!/bin/sh
# TODO: Switch back to Alacritty once it gets GLES2 support.

# ----- User customizations ------

# Install additional packages
alias addpkg="nix-env -f '<nixpkgs>' -iA"
nix-env -e inetutils binutils-wrapper
addpkg i3status termite grim slurp mpv firefox-wayland			# GUI things
addpkg bash coreutils-full unixtools debianutils ncurses openssh procps	# CLI essentials
	nix-env --set-flag priority 11 hostname
	addpkg sysstat expect mosh xdg_utils powertop
addpkg htop fish tree less mandoc neovim neofetch			# CLI tweaks
addpkg git diffutils gnupatch						# Git tools
addpkg dos2unix gawk bc gnused gnugrep ed				# Text tools
addpkg file patchutils findutils libcap sharutils			# File tools
addpkg zstd lz4 lzop gzip brotli bzip2 lzma gnutar cpio unzip		# Archive tools
addpkg parted dosfstools e2fsprogs f2fs-tools cryptsetup hdparm		# Filesystem tools
addpkg kmod pciutils usbutils sysfsutils utillinux kbd lsof		# Kernel tools
addpkg microcom setserial						# Serial tools
addpkg ffmpeg-full imagemagickBig sox youtube-dl exiftool		# Multimedia tools
addpkg apulse alsaUtils beep						# Audio
addpkg gcc automake cmake gnumake rustup go				# Dev tools
	nix-env --set-flag priority 9 gcc-wrapper
	addpkg binutils
addpkg wget curlFull iproute dnsutils nmap netcat-gnu iptables iputils	# Networking tools
	nix-env --set-flag priority 9 nettools
	addpkg inetutils bridge-utils ipcalc

# TODO: Replace Busybox with full-featured commands.

nix-collect-garbage -d

# Create config symlinks
sh setup.sh

# Setup vim-plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ----- System tweaks ------

# Security improvements
sudo rc-update del sshd

# Additional security improvements
#sudo apk add ufw ufw-openrc
#sudo ufw enable
#sudo rc-update add ufw

# FIXME: Wireless improvements
#sudo apk add iwd
#sudo rc-update del wpa_supplicant
#sudo rc-update add iwd
#printf "\n[device]\nwifi.backend=iwd" | sudo tee /etc/NetworkManager/NetworkManager.conf

echo "Please reboot for changes to take effect."
