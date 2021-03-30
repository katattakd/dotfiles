#!/bin/sh

# Configure networking
sudo systemctl enable NetworkManager ufw rfkill-block@bluetooth
sudo ufw enable

