# Making backups
These instructions assume you're working with a fully configured system that has been setup using all the repo's scripts.

## Backing up extension settings
You can write your uBlock Origin filter rules to a file by going into the extension settings, clicking on the "My rules" tab, and pressing "Export to file".

Later, when setting up the new system, the "Import from file..." button can be used to restore the filter rules.

## Folders to back up
Assuming your backup program recursively copies directories and *resolves* symbolic links, and that your home folder is completely managed by the repo's scripts, the following folders/files should be backed up:
- ~/Desktop (excluding ~/Desktop/dotfiles)
- ~/.ssh (excluding ~/.ssh/config)
- ~/.gitconfig

