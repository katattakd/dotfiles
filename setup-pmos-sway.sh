#!/bin/sh
# TODO: Switch back to Alacritty once it gets GLES2 support.

# ----- User customizations ------

# Create config symlinks
sh setup.sh
set -euo pipefail

# Install Nix
sudo apk add curl
sudo mkdir /nix
sudo chown katattakd /nix
echo "#!/bin/sh" > ~/.profile

curl https://nixos.org/nix/install -o /tmp/install.sh
sh /tmp/install.sh --no-daemon

source ~/.profile
sudo apk del curl

# Update installed packages
nix-channel --update
nix-env -u
sudo apk upgrade -a

# Coreutils
sudo apk add alpine-sdk docs pmbootstrap usbutils cmd:find cmd:less cmd:tree

# Text tools
sudo apk add cmd:awk cmd:diff cmd:grep cmd:sed

# Multimedia tools
sudo apk add cmd:exiftool cmd:ffmpeg cmd:magick cmd:sox cmd:youtube-dl

# Archive tools
sudo apk add cmd:brotli cmd:bzip2 cmd:cpio cmd:gzip cmd:lz4 cmd:unzip cmd:xz cmd:zstd

# Dev tools
nix-env -f '<nixpkgs>' -iA rustup

# Monitoring tools
sudo apk add cmd:htop cmd:powertop

# Networking tools
sudo apk add net-tools iputils iproute2 bridge-utils ipcalc
sudo apk add cmd:dig cmd:ssh cmd:tshark cmd:ufw cmd:whois ufw-openrc
sudo apk add cmd:nmap cmd:ncat cmd:nping nmap-scripts

# Audio tools
sudo apk add cmd:alsamixer
nix-env -f '<nixpkgs>' -iA apulse

# Filesystem tools
sudo apk add cmd:cryptsetup cmd:parted dosfstools e2fsprogs f2fs-tools

# ClI tweaks
sudo apk add cmd:neofetch cmd:nvim fish-tools

# GUI things
sudo apk add cmd:i3status cmd:termite cmd:grim cmd:slurp cmd:mpv cmd:imv firefox

nix-store --optimise
nix-collect-garbage -d

# Setup vim-plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ----- System tweaks ------

# Security improvements
sudo rc-update del sshd
sudo ufw enable
sudo rc-update add ufw

# Wireless improvements
sudo apk add iwd
printf "[device]\nwifi.backend=iwd\n" | sudo tee /etc/NetworkManager/conf.d/01-iwd.conf
sudo rc-update del wpa_supplicant
sudo rc-update add iwd

echo "Please reboot for changes to take effect."
