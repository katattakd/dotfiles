#!/bin/sh

# Disable SSH (Manjaro [ARM] specific)
sudo systemctl disable sshd

# Manjaro [ARM] specific tweaks
sudo rm /etc/motd

# Pinebook Pro specific GPU fixes
sudo homectl update $USER --setenv PAN_MESA_DEBUG=gl3

# Manjaro [ARM] specific packages
echo "plymouth-theme-manjaro
manjaro-system" > ~/packages.txt

# Pinebook Pro specific packages
echo "ap6256-firmware
uboot-pinebookpro
zswap-arm" >> ~/packages.txt

# Pinebook Pro specific GPU driver workarounds
echo "pref(\"general.config.obscure_value\", 0);
pref(\"general.config.filename\", \"mozilla.cfg\");" | sudo tee /usr/lib/firefox/defaults/pref/local-settings.js
echo "//
lockPref(\"layers.acceleration.force-enabled\", false);
lockPref(\"gfx.webrender.all\", false);
lockPref(\"gfx.webrender.compositor\", false);
lockPref(\"gfx.webrender.enabled\", false);
" | sudo tee /usr/lib/firefox/mozilla.cfg
