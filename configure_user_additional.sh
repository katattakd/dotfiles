#!/bin/sh

# Cleanup old files from Bash
rm  ~/.bash*

# Configure GitHub CLI
gh auth login --scopes repo,workflow,gist,read:public_key
gh config set git_protocol https

echo "Finished configuring system! Please read firefox_setup.md to complete Firefox setup."
