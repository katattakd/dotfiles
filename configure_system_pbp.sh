#!/bin/sh

# Disable SSH (Manjaro [ARM] specific)
sudo systemctl disable sshd

# Pinebook Pro specific GPU fixes
echo "export PAN_MESA_DEBUG=\"gl3\"" | sudo tee /etc/profile.d/pbp_gpu.sh

# Manjaro [ARM] specific packages
echo "plymouth-theme-manjaro
manjaro-system
mesa-git" > ~/packages.txt

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
