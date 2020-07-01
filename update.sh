#!/bin/sh
set -euo pipefail

# Update installed packages
sudo apk --update-cache upgrade --clean-protected --available
sudo apk fix

# Update Nix packages
nix-channel --update
nix-env -u

# Clean Nix cache
nix-collect-garbage -d
nix-store --optimize

# Update Vim plugins
echo ":PlugUpdate" | nvim -s -

echo "Please reboot for changes to take effect."
