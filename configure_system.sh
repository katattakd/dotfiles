#!/bin/sh

# Configure networking
sudo systemctl enable NetworkManager

# Disable SSH (Manjaro [ARM] specific)
sudo systemctl disable sshd

