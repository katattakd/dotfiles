#!/bin/sh

# Disable SSH (Manjaro [ARM] specific)
sudo systemctl disable sshd

# Pinebook Pro specific GPU fixes
sudo homectl update $USER --setenv PAN_MESA_DEBUG=gl3

# Pinebook Pro specific touchpad fixes
sudo mkdir -p /etc/sway/config.d
echo "input 9610:30:Pine64_Pinebook_Pro_Touchpad {
	pointer_accel -.2
	scroll_factor .8
}" | sudo tee /etc/sway/config.d/90-pbp-touchpad.conf

# Manjaro [ARM] specific packages
echo "plymouth-theme-manjaro
manjaro-system" > ~/packages.txt

# Pinebook Pro specific packages
echo "ap6256-firmware
uboot-pinebookpro-bsp
pinebook-post-install
zswap-arm" >> ~/packages.txt
