#!/bin/sh

# Remove old user dirs
rm -r ~/Desktop ~/Templates ~/Public

# Configure Firefox
firefox --CreateProfile kat
echo ~/.mozilla/firefox/*.kat | xargs -n 1 ln -svf ~/dotfiles/.config/firefox/*

# Configure GitHub CLI
gh auth login --scopes repo,workflow,gist,read:public_key
gh config set git_protocol https

echo "Finished configuring system! Please read firefox_setup.md to complete browser setup."
