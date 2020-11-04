## Steps to setup Firefox
These steps assume that you've already added the required user.js file in the dotfiles repo. If you haven't done this yet, reset Firefox, open and close it once, and then run the setup.sh script.

### Firefox setup
- Go to Preferences
  - Go to Network Settings
    - Disable DNS over HTTPS (explained here: https://blog.powerdns.com/2019/09/25/centralised-doh-is-bad-for-privacy-in-2019-and-beyond/ )
  - Set default search engine to DuckDuckGo
  - Clear all history
- Go to Customize
  - Set theme to Dark, and density to Compact
  - Remove Flexible Space from toolbar
  - Remove Home, Library and Sidebars icons
  - Add "Developer" after the refresh icon, and "Forget" to corner of window
- Add the below extensions:
  - uBlock Origin
  - Privacy Badger
- Change the order of toolbar extensions to uBlock Origin, Privacy Badger.
- Remove the favorite icon from the address bar

### uBlock Origin setup
- Enable "I am an advanced user"
- Enable all options under "Privacy"
- Enable "Block media elements larger than 1000KB"
- Enable "Block remote fonts"
- Enable "Disable JavaScript"
- Enable and update all rulesets in these categories:
  - Built-in
  - Ads
  - Privacy
  - Malware Domains
  - Annoyances
  - Multipurpose
- Open dynamic filtering menu, globally block 3rd party scripts and 3rd party frames, then save changes

