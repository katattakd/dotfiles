# Firefox setup
These instructions assume that you've already run the `configure_user.sh` setup script. If you haven't, remove the `~/.mozilla` folder and run the script before proceeding.

## uBlock Origin setup
These settings put uBlock Origin into what is essentially a modified "medium mode". This should provide a fairly good balance between privacy (all JS and 3rd party frames are disabled by default), usability (one click to completely disable script blocking), and performance (not using a large number of filter lists).

### Settings
- Enable "I am an advanced user".

### Filter lists
- Enable and update the default filter lists.
- Enable and update the "uBlock filters - Annoyances" filter list.

### My rules
- Paste and commit the following rules:
```
no-csp-reports: * true
no-large-media: behind-the-scene false
no-scripting: * true
* * 3p-frame block
behind-the-scene * * noop
behind-the-scene * 1p-script noop
behind-the-scene * 3p noop
behind-the-scene * 3p-frame noop
behind-the-scene * 3p-script noop
behind-the-scene * image noop
behind-the-scene * inline-script noop
```

## uBlock Origin backups

### My rules
Use the "Export to file" button to back up filter rules. They can later be restored by using the "Import from file..." button and then committing the changes.
