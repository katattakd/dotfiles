#!/bin/sh

# Create package tree
declare -a explicit_packages=(

# Core system packages
"base" "linux" "manjaro-release" "manjaro-system" "sudo"

# Pinebook Pro system packages
"ap6256-firmware" "pinebookpro-post-install uboot-pinebookpro" "zswap-arm"



# Program documentation
"man-db" "man-pages" "texinfo"

# Networking essentials
"networkmanager" "ufw"

# Audio essentials
"alsa-utils" "pulseaudio" "pulseaudio-alsa" "pulsemixer"

# USB essentials
"usbutils"



# Fish + config dependencies
"exa" "fish" "ncdu" "neovim"

# CLI essentials
"fd" "htop" "lostfiles" "ripgrep" "ytop"

# Sway + (some) config dependencies
"sway" "brightnessctl" "grimshot"

# GUI essentials
"imv" "mpv" "termite" "xcas"
"firefox" "firefox-ublock-origin"



# Networking tools
"bind" "mtr" "nmap"

# Media encoding tools
"perl-image-exiftool" "ffmpeg" "imagemagick" "sox" "youtube-dl"

# Developer tools
"$(pacman -Qqg base-devel)" "rustup"



# Disk tools
"gparted"

# Office tools
"libreoffice-fresh"

# Audio tools
"audacity" "lmms"

# Illustrating tools
"inkscape" "krita"

# 3D modeling tools (Broken on PBP!)
#"blender"

# Photography tools
"gimp" "rawtherapee"

# Advanced networking tools
"wireshark-qt"

# Virtualization tools
"qemu"

# SDR tools
"rtl-sdr" "gqrx"

# GPS tools
"gpsd"

)
declare -a dependency_packages=(

# Sway config dependencies
"i3status" "noto-fonts" "swaylock"
"wl-clipboard" "xorg-xwayland"

# Firefox spell checking
"hunspell-en_US"

# Font extras
"noto-fonts-cjk" "noto-fonts-emoji"

# Imagemagick extras
"ghostscript" "imagemagick-doc"

# Developer extras
"lldb"

# Gparted extras
"dosfstools" "f2fs-tools" "exfat-utils" "ntfs-3g" "gpart" "mtools"

# Libreoffice extras
"libmythes" "libwpg" "sane" "coin-or-mp"

# Krita extras
"opencolorio" "krita-plugin-gmic" "kseexpr" "kimageformats"

# Qemu extras
"qemu-arch-extra"

)





# Update installed system
sudo pacman -Syu

# Install all dependencies of the package tree not currently present
sudo pacman -S --asdeps --needed --noconfirm ${explicit_packages[@]} ${dependency_packages[@]}

# Flag packages according to the package tree
sudo pacman -D --noconfirm --asdeps $(pacman -Qqe)
sudo pacman -D --noconfirm --asexplicit ${explicit_packages[@]}

# Remove packages that are not part of the package tree
sudo pacman -Rsunc $(comm -23 <(pacman -Qqtt | sort) <(pacman -Qq ${explicit_packages[@]} ${dependency_packages[@]} | sort)) $(pacman -Qqtd)

# Update config files
sudo -E DIFFPROG='nvim -d' pacdiff

# Remove old files from package cache
paccache -rk2 -ruk0 --min-atime 1m
