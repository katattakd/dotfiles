#!/bin/sh
set -euo pipefail

# Update installed packages
sudo apk --update-cache upgrade --clean-protected --available
sudo apk fix

echo "Please reboot for changes to take effect."
