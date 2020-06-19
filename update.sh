#!/bin/sh
set -euo pipefail

# Update installed packages
sudo apk --update-cache upgrade --clean-protected --available
sudo apk fix

# Update Vim plugins
echo ":PlugUpdate" | nvim -s -

echo "Please reboot for changes to take effect."
