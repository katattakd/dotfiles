#!/bin/sh

# Configure managed user
sudo homectl update kat --nice=2 --timezone=America/Los_Angeles --language=en_US --cpu-weight=50 --io-weight=50 --kill-processes=true #--memory-high=85% --memory-max=90%

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
