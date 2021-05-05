# Firefox setup

## uBlock Origin setup
This should provide a fairly good balance between privacy/security (all JS is disabled by default), usability (one click to completely disable script blocking), and performance (not using a large number of filter lists).

### Settings
- Enable "Disable JavaScript".

### Filter lists
- Enable and update the default filter lists.

## uBlock Origin backups

### My rules
Use the "Export to file" button to back up filter rules. They can later be restored by using the "Import from file..." button and then committing the changes.

## Extension recommendations
Other extensions may be useful to add additional functionality to the browser. However, these extensions are not managed by the dotfiles repository and are completely optional.
- Bitwarden - Password manager (built-in password manager is disabled for security reasons)
  - https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/
- Export Tabs URLs - Session management (history+active session is automatically cleared on browser close by user.js)
  - https://addons.mozilla.org/en-US/firefox/addon/export-tabs-urls-and-titles/
