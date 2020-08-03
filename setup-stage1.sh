#!/bin/sh
set -euo pipefail

# Update installed packages
sudo pacman -Syu

# Flag unnecessary packages for removal
sudo pacman -D --noconfirm --asdeps $(pacman -Qqe)

# Core system packages
sudo pacman -D --noconfirm --asexplicit base manjaro-release manjaro-system sudo

# ARM system packages
sudo pacman -D --noconfirm --asexplicit linux-aarch64 zswap-arm

# Pinebook Pro system packages
sudo pacman -D --noconfirm --asexplicit ap6256-firmware pinebookpro-post-install uboot-pinebookpro
