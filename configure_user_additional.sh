#!/bin/sh

# Cleanup old files from Bash
rm  ~/.bash*

# Configure GitHub CLI
gh auth login --scopes repo,workflow,gist,read:public_key
gh config set git_protocol https

echo "Finished configuring system! Please read librewolf_setup.md to complete browser setup."
