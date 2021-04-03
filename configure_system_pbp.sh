#!/bin/sh

# Disable SSH (Manjaro [ARM] specific)
sudo systemctl disable sshd

# Pinebook Pro specific GPU fixes
echo "export PAN_MESA_DEBUG=\"gl3\"" | sudo tee /etc/profile.d/pbp_gpu.sh

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
if getPref("gfx.webrender.all") {
	lockPref(\"gfx.webrender.software\", true);
} else {
	unlockPref(\"gfx.webrender.software\");
	clearPref(\"gfx.webrender.software\");
}
" | sudo tee /usr/lib/firefox/mozilla.cfg
