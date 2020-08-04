#!/bin/sh
# FIXME: Use Alacritty instead of Termite.
# - STATUS: Waiting for upstream fix.
# - https://github.com/alacritty/alacritty/issues/128
# TODO: Get Anbox working.

# Create config symlinks
sh setup.sh

# Install updates and flag all non-core packages for removal
sh setup-stage1.sh

# Install and setup essential tools
sh setup-stage2.sh

# Install and setup a graphical enviornment
sh setup-stage3.sh

# Install and setup useful tools
sh setup-stage4.sh

# Install optional GUI tools, remove unused packages
sh setup-stage5.sh

# Disable SSH
sudo systemctl disable sshd

echo "Installation finished. Rebooting is recommended."
