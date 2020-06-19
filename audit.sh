#!/bin/sh
set -euo pipefail

alias echo="echo -e"

sudo apk stats

echo "\nThe following packages have been orphaned:\n"
sudo apk list --orphaned

echo "\nThe following packages are outdated:\n"
sudo apk list --upgradable

echo "\nThe following packages have been modified:\n"
sudo apk audit --system --check-permissions --packages
echo "\nThe modified files are listed below.\n"
sudo apk audit --system --check-permissions --recursive

echo "\nThe following packages have modified config files:\n"
sudo apk audit --check-permissions --packages
echo "\nThe modified files are listed below.\n"
sudo apk audit --check-permissions --recursive
