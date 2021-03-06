# dotfiles
Kat's dotfiles.
These should *only* be used for reference, as they are written only to support 1 user's needs: Kat. I will not modify these to suit your needs, as you should not be using them directly. The setup instructions are just to guide you on how the dotfiles repo works, they're only intended to be run by Kat on Kat's computer (currently a Pinebook Pro).

# todo
- improve backup/restore process

## Setup instructions (Full install)
1. Install [Tow-Boot](https://github.com/Tow-Boot/Tow-Boot/releases/) to your device.
2. Install [Manjaro ARM Minimal](https://manjaro.org/download/#pinebook-pro-minimal) to your device.
3. Boot the device and login as root. Connect the device to the internet using an Ethernet adapter or USB tethering.
4. Run the below commands (replace `$NON_ROOT_USER` with the account created during setup):
```bash
# Disable SSH
systemctl disable --now sshd

# Remove old user
userdel -r $NON_ROOT_USER

# Enable fscrypt
tune2fs -O encrypt $(df -P / | tail -1 | cut -d' ' -f 1)

# Update the system (to prevent a partial upgrade) and install a few necessary packages
pacman -Syu fish

# Create new user with encrypted home directory
homectl create kat --shell=/usr/bin/fish --member-of=wheel --storage=fscrypt
```
5. Login with the "kat" user.
6. Run the below commands:
```bash
# Download the dotfiles repo.
git clone https://github.com/katattakd/dotfiles
cd dotfiles

# Configures Pinebook Pro specific parts of the system.
# This must be run before all other scripts.
sh configure_system_pbp.sh

# Install/updates packages, and remove those that aren't necessary.
# This also performs maintenance tasks and can be used to upgrade the system.
sh sync_package_tree.sh

# Creates/updates system configuration as necessary.
sh configure_system.sh

# Creates/updates user configuration as necessary.
sh configure_user.sh

# Installs/updates user packages (vim plugins, flatpak apps, etc).
# This also performs maintenance tasks and can be used to upgrade the system.
sh sync_user_programs.sh
```
7. Reboot
8. Login to "kat" and run the below commands:
```bash
# Creates/updates user configuration as necessary.
# This requires an active window manager to run properly.
sh configure_user_additional.sh
```
9. Follow the instructions in [firefox_setup.md](firefox_setup.md). Most browser configuration is automated, however, adjusting extension settings must be done manually.

## Update intructions (Full install)

### System/user packages
To update installed packages on the configured system, run the following commands:
```bash
cd ~/dotfiles

# This will also mark any programs added manually for removal. To prevent this, create a ~/packages.txt file with the packages you want to keep.
sh sync_package_tree.sh

# This will also clean up junk from the home folder.
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
sh configure_user_additional.sh
sh sync_user_programs.sh
```

### Backups
Assuming all files are being properly managed by the repo's scripts, the following command should be sufficient to back up all important files on the installed system (replace `$DEST` with the location to back up to, like `kat@example.com:/home/kat/kattop_backup`):
```bash
sh backup.sh $DEST
```

## Additional notes

### firefox experimental prefs tweaks (about:config)
`gfx.webrender.force-disabled`: `true` - workaround for webrender related issues

### kernel command line tweaks (`/boot/extlinux/extlinux.conf`)
`cpufreq.default_governor=performance` - ~10% performance boost, increased power usage
`loglevel=2` - faster boot time

## Screenshots
![](screenshot-1.png) ![](screenshot-2.png) ![](screenshot-3.png)
