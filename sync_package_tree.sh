#!/bin/sh

# Create package tree
declare -a explicit_packages=(

# Core system packages
"base" "linux" "manjaro-release" "manjaro-system" "sudo"

# Pinebook Pro specific packages
"ap6256-firmware" "pinebookpro-post-install" "uboot-pinebookpro" "zswap-arm"



# Program documentation
"man-db" "man-pages" "texinfo"

# Networking essentials
"networkmanager" "ufw"

# Audio essentials
"alsa-utils" "pulseaudio-alsa" "pulsemixer"

# USB essentials
"usbutils"



# Fish + config dependencies
"exa" "fish" "ncdu" "neovim"

# CLI essentials
"fd" "htop" "lostfiles" "ripgrep" "ytop"

# Sway + config dependencies
"sway" "swaylock" "i3status" "brightnessctl" "grimshot" "wl-clipboard"

# GUI essentials
"imv" "mpv" "alacritty"
"firefox" "firefox-ublock-origin"



# Networking tools
"nmap"

# Disk tools
"parted" "dosfstools"

# Media encoding tools
"ffmpeg" "imagemagick" "sox" "youtube-dl"

# Developer tools
"$(pacman -Qqg base-devel)" "rustup"



# CAS Calculator
"xcas"

# Office tools
"libreoffice-fresh"

# Image tools
"gimp" "rawtherapee"

)
declare -a dependency_packages=(

# Xwayland
"xorg-xwayland"

# Fonts
"noto-fonts" "noto-fonts-cjk" "noto-fonts-emoji"

# Spell checking dictionary
"hunspell-en_US"

# Imagemagick extras
"imagemagick-doc"

)
if [ -f ~/packages.txt ]; then
	declare -a user_packages=($(cat ~/packages.txt))
else
	declare -a user_packages=()
fi



# Update branch and mirror list
if [ $(pacman-mirrors --get-branch) != "arm-testing" ]; then
	sudo pacman-mirrors --api --protocols https --set-branch testing
	sudo pacman -Syyuu
fi

# Update installed system
sudo pacman -Syu
sudo pacman -Fy

# Install all dependencies of the package tree not currently present
sudo pacman -S --needed ${explicit_packages[@]} ${dependency_packages[@]} ${user_packages[@]}


# Flag packages according to the package tree
sudo pacman -D --noconfirm --asdeps $(pacman -Qqe)
sudo pacman -D --noconfirm --asexplicit ${explicit_packages[@]} ${user_packages[@]}


# Remove packages that are not part of the package tree
sudo pacman -Rsunc $(comm -23 <(pacman -Qqtt | sort) <(pacman -Qq ${explicit_packages[@]} ${dependency_packages[@]} ${user_packages[@]} | sort)) $(pacman -Qqtd)

# Update config files
sudo DIFFPROG='nvim -d' pacdiff

