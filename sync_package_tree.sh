#!/bin/sh

# Create package tree
declare -a explicit_packages=(

# Core system packages
"base" "linux" "sudo"



# Program documentation
"man-db" "man-pages" "texinfo"

# Networking essentials
"networkmanager"

# Audio essentials
"alsa-utils" "pipewire-pulse" "pulsemixer"




# Fish + config dependencies
"exa" "fish" "neovim"

# CLI essentials
"fd" "gping" "lazygit" "htop" "ncdu" "ripgrep"



# Sway + config dependencies
"sway" "swaylock" "i3status" "brightnessctl" "grimshot"

# GUI essentials
"alacritty" "mpv" "flatpak" "firefox" "firefox-ublock-origin"



# File tools
"rsync"

# Developer tools
"github-cli" "httpie"

### Rust tools
"gcc" "rust" "rust-docs" "cargo-watch"

)
declare -a dependency_packages=(

# Fonts
"noto-fonts"

# Graphics library
"mesa"

# Media streaming support
"youtube-dl"

# Clipboard support
"wl-clipboard"

# Spell checking dictionary
"hunspell-en_us"

# Wireless networking backend
"iwd"

# Pipewire screen capture backend
"xdg-desktop-portal" "xdg-desktop-portal-wlr"

)
if [ -f ~/packages.txt ]; then
	declare -a user_packages=($(cat ~/packages.txt))
else
	declare -a user_packages=()
fi

# Update mirror list (Manjaro specific tool)
if [[ $(find /etc/pacman.d/mirrorlist -mtime +15 -print) ]] || [[ $(pacman-mirrors --get-branch) != *"unstable" ]]; then
	sudo pacman-mirrors --api --protocols https --set-branch unstable --country all
	sudo pacman -Syyuu
fi

# Update installed system
sudo pacman -Syu
sudo pacman -Fy

# Install all dependencies of the package tree not currently present
sudo pacman -S --needed ${explicit_packages[@]} ${dependency_packages[@]} ${user_packages[@]}

# Flag packages according to their presence in the package tree
sudo pacman -D --noconfirm --asdeps $(pacman -Qqe)
sudo pacman -D --noconfirm --asexplicit ${explicit_packages[@]} ${dependency_packages[@]} ${user_packages[@]}

# Remove packages that are not part of the package tree
sudo pacman -Rsunc $(pacman -Qqttd)

# Flag packages according to their role in the package tree
sudo pacman -D --noconfirm --asdeps ${dependency_packages[@]}

# Validate the package tree by removing orphaned/foreign packages
sudo pacman -Rsunc $(pacman -Qqtd) $(pacman -Qqm)

# Update config files
sudo DIFFPROG='nvim -d' pacdiff
