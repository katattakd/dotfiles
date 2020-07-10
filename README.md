# dotfiles
Kat's dotfiles.
Note that this repo contains the dotfiles for two completely different computers. Try not to mix the profiles below if you can.

## GUI Dependencies (profile 1)
- sway
  - i3status
  - swaylock
  - grim
    - slurp
- firefox
- mpv
- imv
- termite

## GUI Dependencies (profile 2)
- firefox
- mpv
- kitty
  - font-fira-code

## CLI Dependencies
- nvim
  - vim-plugged (installed manually, not through package manager)
- fish
- neofetch
- curl

## Setup instructions (profile 1)
1. Install postmarketOS with the Sway UI to your device.
2. Connect to the internet.
3. Create a single-user installation of Nix. This can be accomplished with the below commands:
```bash
sudo apk add curl

sudo mkdir /nix
sudo chown kat /nix
echo "#!/bin/sh" > ~/.profile

curl -L https://nixos.org/nix/install -o /tmp/install.sh
sh /tmp/install.sh --no-daemon

source ~/.profile
sudo apk del curl
```
4. Run the below command:
```bash
sh setup-pmos-sway.sh
```
5. Reboot
