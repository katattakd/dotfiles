#!/bin/sh

# Cleanup old files from Bash
rm  ~/.bash*

# Configure Firefox profiles
firefox -CreateProfile $USER
echo ~/.mozilla/firefox/*.$USER | xargs -n 1 ln -s ~/dotfiles/.mozilla/*

# Configure GitHub CLI
gh auth login --scopes repo,workflow,gist,read:public_key
gh config set git_protocol https

echo "Finished configuring system! Please read firefox_setup.md to complete Firefox setup."
