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
"sway" "swaylock" "i3status" "brightnessctl" "grimshot" "wl-clipboard"

# GUI essentials
"alacritty" "flatpak" "mpv" "firefox" "firefox-ublock-origin"



# Media tools
"youtube-dl"

# File tools
"rsync"

# Developer tools
"github-cli" "httpie"

### Golang tools
"go" "go-tools"

### Rust/C tools
$(pacman -Sqg base-devel | xargs) "rustup" "cargo-watch"

)
declare -a dependency_packages=(

# Fonts
"noto-fonts"

# Graphics library
"mesa"

# Spell checking dictionary
"hunspell-en_us"

# Pipewire screen capture backend
"xdg-desktop-portal" "xdg-desktop-portal-wlr"

)
if [ -f ~/packages.txt ]; then
	declare -a user_packages=($(cat ~/packages.txt))
else
	declare -a user_packages=()
fi

# Update mirror list (Manjaro specific tool)
if [[ $(find /etc/pacman.d/mirrorlist -mtime +15 --print) ]] || [ $(pacman-mirrors --get-branch) != "*unstable" ]; then
	sudo pacman-mirrors --api --protocols https --set-branch unstable --fasttrack 0
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
