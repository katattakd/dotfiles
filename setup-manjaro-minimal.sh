#!/bin/sh
# FIXME: Use Alacritty instead of Termite.
# - STATUS: Waiting for upstream fix.
# - https://github.com/alacritty/alacritty/issues/128
# TODO: Get Anbox working.

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
"pamac-cli" "lostfiles"
"fd" "ripgrep"
"htop" "neofetch" "ytop"

# Sway + (some) config dependencies
"sway" "brightnessctl" "grimshot"

# GUI essentials
"imv" "mpv" "termite" "xcas"
"firefox" "firefox-ublock-origin" "firefox-extension-privacybadger"



# Networking tools
"bind" "mtr" "nmap"

# Media encoding tools
"perl-image-exiftool" "ffmpeg" "imagemagick" "sox" "youtube-dl"

# Developer tools
"$(pacman -Qqg base-devel)" "rustup"



# Misc tools
"pacgraph" "xorg-xev"

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
"noto-fonts-cjk" "noto-fonts-emoji" "noto-fonts-extra"

# Imagemagick extras
"ghostscript" "imagemagick-doc"

# Developer extras
"lldb" "gdb"

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
sudo pacman -D --noconfirm --asdeps ${dependency_packages[@]}

# Remove packages that are not part of the package tree
sudo pacman -Rsunc $(pacman -Qtdq)

# Clean package cache
sudo pacman -Sc

# Configure installed system
sh setup.sh

echo "Installation finished. Rebooting is recommended."
