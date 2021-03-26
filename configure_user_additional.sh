#!/bin/sh

# Cleanup old files from Bash
rm ~/.bash_history

# Configure Firefox profiles
firefox -CreateProfile $USER
mv ~/.mozilla ~/.local/share/mozilla
ln -s ~/.local/share/mozilla ~/.mozilla
echo ~/.mozilla/firefox/*.$USER | xargs -n 1 ln -s ~/dotfiles/.mozilla/user.js
echo ~/.mozilla/firefox/*.$USER | xargs -n 1 ln -s ~/dotfiles/.mozilla/search.json.mozlz4

# Configure GitHub CLI
gh auth login --scopes repo,workflow,gist,read:public_key
gh config set git_protocol https

echo "Finished configuring system! Please read firefox_setup.md to complete Firefox setup."
