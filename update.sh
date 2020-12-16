#!/bin/sh
set -euo pipefail

# Update installed packages
pamac upgrade -a --devel

# Remove orphaned packages
pamac remove -o

# Clean cache
pamac clean -b

# Update Vim plugins
echo ":PlugUpdate" | nvim -s -

# Update rustup toolchains
rustup update

echo "Please reboot for changes to take effect."
