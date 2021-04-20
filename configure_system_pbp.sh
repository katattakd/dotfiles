#!/bin/sh

# Disable SSH (Manjaro [ARM] specific)
sudo systemctl disable sshd

# Pinebook Pro specific GPU fixes
sudo homectl update $USER --setenv PAN_MESA_DEBUG=gl3

# Manjaro [ARM] specific packages
echo "plymouth-theme-manjaro
manjaro-system" > ~/packages.txt

# Pinebook Pro specific packages
echo "ap6256-firmware
uboot-pinebookpro
zswap-arm" >> ~/packages.txt
