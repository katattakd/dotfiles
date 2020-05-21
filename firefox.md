## Steps to setup Firefox
These steps assume that you've already added the required user.js file in the dotfiles repo.

### Firefox setup
- Go to Preferences
  - Set language to "English (United States)", enable "Check your spelling as you type"
  - Go to Network Settings
    - Enable DNS over HTTPS
  - Set default search engine to DuckDuckGo
  - Clear all history
  - Enable "prevent accessibility services from accessing your browser"
- Go to Customize
  - Set theme to Dark, and density to Compact
  - Remove Flexible Space from toolbar
  - Replace Home, Library and Sidebars icons
  - Add "Open File" to corner of window
- Add the below extensions (add uMatrix last):
  - uMatrix - Block everything by default
  - uBlock Origin - Block stuff whitelisted by uMatrix
  - Privacy Badger - Block stuff that uBlock Origin doesn't catch
  - Decentraleyes - Prevent some requests from reaching the internet, handle them locally
- Remove the Decentraleyes icon from the toolbar
- Change the order of toolbar extensions to uMatrix, uBlock Origin, Privacy Badger.
- Remove the favorite icon from the address bar

### uMatrix setup
- Enable and update all Hosts files assets, except those that use HTTP.
- Open the Matrix and go to the global scope.
  - Set all scripts to blocked by default.
- Load per-site rulesets as needed.

### uBlock Origin setup
- Enable "Block CSP reports"
- Enable and update the rulesets in these categories:
  - Built-in
  - Ads
  - Privacy
- Disable the rulesets in these categories (they conflict with uMatrix):
  - Malware domains
  - Multipurpose

### Privacy Badger setup
- Enable "Learn in Private/Incognito windows"

