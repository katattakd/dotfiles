# LibreWolf setup

## user.js setup
Run the following command to import the dotfiles user.js:
```bash
echo ~/.var/app/io.gitlab.librewolf-community/.librewolf/*.default* | xargs -n 1 cp -f ~/dotfiles/.config/librewolf/user.js
```
This is only required after the first time you run the browser. After running this, the `sync_user_programs.sh` script will keep it updated.

## menu > "Customize Toolbar..."
- Set "Theme" to "Dark"
- Set "Density" to "Compact"

## uBlock Origin setup
These settings put uBlock Origin into what is essentially a modified "medium mode". This should provide a fairly good balance between privacy (all JS and 3rd party frames are disabled by default), usability (one click to completely disable script blocking), and performance (not using a large number of filter lists).

### about:addons > uBlock Origin
- Enable "Run in Private Windows"

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

## Extension recommendations
Other extensions may be useful to add additional functionality to the browser. However, these extensions are not managed by the dotfiles repository and are completely optional.
- Bitwarden - Password manager (built-in password manager is disabled for security reasons)
  - https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/
- Export Tabs URLs - Session management (history+active session is automatically cleared on browser close by user.js)
  - https://addons.mozilla.org/en-US/firefox/addon/export-tabs-urls-and-titles/
