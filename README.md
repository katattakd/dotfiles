# dotfiles
Kat's dotfiles.
These should *only* be used for reference, as they are written only to support 1 user's needs: Kat. I will not modify these to suit your needs, as you should not be using them directly. The setup instructions are just to guide you on how the dotfiles repo works, they're only intended to be run by Kat on Kat's computer.

### todo
- use alacritty instead of termite
- get anbox working
- add script to remove home folder junk and back-up user files

## Setup instructions
1. Install [Manjaro ARM Minimal](https://gitlab.manjaro.org/manjaro-arm/applications/manjaro-arm-installer) to your device.
2. Boot the device and [connect it to the internet](https://wiki.archlinux.org/index.php/Iwd#Usage). Login as a non-root user.
3. Run the below commands:
```bash
# Download the dotfiles repo.
cd ~
git clone https://github.com/katattakd/dotfiles
cd dotfiles

# Update mirrorlist, so that packages will download faster. This should be run every few months or so.
sudo pacman-mirrors -f 0

# Install/updates packages, and remove those that aren't necessary.
# This also performs maintenance tasks and can be used to upgrade the system.
sh sync_package_tree.sh

# Creates/updates system configuration as necessary.
sh configure_system.sh

# Creates/updates user configuration as necessary.
sh configure_user.sh

# Installs/updates user packages (vim plugins, rustup toolchains, etc).
# This also performs maintenance tasks and can be used to upgrade the system.
sh sync_user_programs.sh
```
4. Reboot
5. If you intend to use Firefox, follow the instructions in firefox_setup.md. Most of Firefox's configuration is automated, however, adjusting extension settings must be done manually.

## Update intructions

### System/user packages
To update installed packages on the configured system, run the following commands:
```bash
cd ~/dotfiles

# This will also mark any programs added manually for removal. To prevent this, create a ~/packages.txt file with the packages you want to keep.
sh sync_package_tree.sh

# This will also remove files not accessed in more than 28 days from ~/.cache
sh sync_user_programs.sh
```
### Configuration
To update the dotfiles on the configured system, run the following commands:
```bash
cd ~/dotfiles
git pull

sh sync_package_tree.sh
sh configure_system.sh
sh configure_user.sh
sh sync_user_programs.sh
```

