# Firefox setup
These instructions assume that you've already run the `configure_user.sh` setup script. If you haven't, remove the `~/.mozilla` folder and run the script before proceeding.

### Firefox configuration
- Go to Preferences
  - Set default search engine to DuckDuckGo
- Go to Customize
  - Set theme to Dark, and density to Compact
  - Remove Flexible Space from toolbar
  - Remove Home, Library and Sidebars icons
  - Change the order of the toolbar's right side to uBlock Origin, Downloads (auto hide on)
- Remove the favorite icon from the address bar

### uBlock Origin setup
- Enable "Disable JavaScript"
- Set "Block media elements larger than" limit to 0KB. Leave disabled.
- Enable and update all rulesets in these categories:
  - Built-in
  - Ads
  - Privacy
  - Malware Domains
  - Annoyances
  - Multipurpose

