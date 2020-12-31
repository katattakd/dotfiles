#!/bin/sh

# Configure ufw
sudo ufw enable

# Enable networking services
sudo systemctl enable NetworkManager ufw

