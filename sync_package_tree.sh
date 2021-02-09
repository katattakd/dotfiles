#!/bin/sh

# Create package tree
declare -a explicit_packages=(

# Core system packages
"base" "linux" "manjaro-system" "sudo"

# Pinebook Pro specific packages
"ap6256-firmware" "uboot-pinebookpro" "zswap-arm"



# Program documentation
"man-db" "texinfo"

# Networking essentials
"networkmanager"

# Audio essentials
"alsa-utils" "pulsemixer"



# Fish + config dependencies
"exa" "fish" "neovim"

# CLI essentials
"fd" "htop" "ncdu" "ripgrep"



# Sway + config dependencies
"sway" "swaylock" "i3status" "brightnessctl" "grim" "wl-clipboard"

# GUI essentials
"alacritty" "mpv" "firefox" "firefox-ublock-origin"



# Networking tools
"gnu-netcat" "httpie"

# Media tools
"youtube-dl"

# Developer tools
"gcc" "rustup" "cargo-watch"



# CAS calculator
"xcas"

# Image tools
"gimp" "rawtherapee"

)
declare -a dependency_packages=(

# Xwayland
"xorg-xwayland"

# Fonts
"noto-fonts"

# Spell checking dictionary
"hunspell-en_US"

)
if [ -f ~/packages.txt ]; then
	declare -a user_packages=($(cat ~/packages.txt))
else
	declare -a user_packages=()
fi



# Update branch and mirror list
if [ $(pacman-mirrors --get-branch) != "arm-unstable" ]; then
	sudo pacman-mirrors --api --protocols https --set-branch unstable
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

# Clean old packages from package cache
paccache -rk2 -ruk0 --min-atime 1m --min-mtime 1m
