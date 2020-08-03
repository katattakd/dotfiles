#!/bin/sh
set -euo pipefail

# Update installed packages
sudo pacman -Syu

# Remove orphaned packages
sudo pacman -Rsunc $(pacman -Qtdq)

# Clean cache
sudo pacman -Sc

# Update Vim plugins
echo ":PlugUpdate" | nvim -s -

# Update rustup toolchains
rustup update

echo "Please reboot for changes to take effect."
