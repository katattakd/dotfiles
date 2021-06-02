//////////////////// nomozilla

// Disable Activity Stream telemetry
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);

// Activity Stream Top Stories, Pocket-based and/or sponsored content
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);

// Clear default topsites
user_pref("browser.newtabpage.activity-stream.default.sites", "");

// Use Mozilla geolocation instead of Google
user_pref("geo.provider.network.url", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%");

// Disable region detection
user_pref("browser.region.network.url", "");
user_pref("browser.region.update.enabled", false);

// Disable automatically *installing* Firefox updates
user_pref("app.update.auto", false);

// Disable about:addons recommendations
user_pref("extensions.getAddons.showPane", false);
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);

// Disable telemetry
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);

// Disable Telemetry Coverage
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("toolkit.coverage.endpoint.base", "");

// Disable Firefox Health Reports
user_pref("datareporting.healthreport.uploadEnabled", false);

// Disable new data submission
user_pref("datareporting.policy.dataSubmissionEnabled", false);

// Disable Studies
user_pref("app.shield.optoutstudies.enabled", false);

// Disable personalized recommendations
user_pref("browser.discovery.enabled", false);

// Disable Crash Reports
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);

// Disable remote Safe Browsing look-ups for downloaded files
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.url", "");

// Disable Normandy/Shield
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");

// Disable System Add-on updates
user_pref("extensions.systemAddon.update.enabled", false);
user_pref("extensions.systemAddon.update.url", "");

// Disable PingCentre telemetry
user_pref("browser.ping-centre.telemetry", false);

// Disable Welcome / What's New notices
user_pref("browser.startup.homepage_override.mstone", "ignore");
user_pref("browser.messaging-system.whatsNewPanel.enabled", false);

// Disable CFR
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);




//////////////////// nomozilla_standard

// Disable automatically installing extension/theme updates
user_pref("extensions.update.autoUpdateDefault", false);

// Disable Pocket Account
user_pref("extensions.pocket.enabled", false);

// Disable Firefox Accounts & Sync
user_pref("identity.fxaccounts.enabled", false);

// Disable login saving (fairly useless without FF Sync)
user_pref("signon.rememberSignons", false);
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.creditCards.enabled", false);




//////////////////// privacy

// Disable prefetching
user_pref("network.prefetch-next", false);
user_pref("network.dns.disablePrefetch", true);
user_pref("network.predictor.enabled", false);
user_pref("network.http.speculative-parallel-limit", 0);
user_pref("browser.urlbar.speculativeConnect.enabled", false);

// Disable domain guessing
user_pref("browser.fixup.alternate.enabled", false);
user_pref("browser.urlbar.dnsResolveSingleWordsAfterSearch", 0);

// Make cache session-only
user_pref("browser.cache.disk.enable", false);
user_pref("browser.privatebrowsing.forceMediaMemoryCache", true);

// Use CRLite instead of OCSP when possible
user_pref("security.remote_settings.crlite_filters.enabled", true);
user_pref("security.pki.crlite_mode", 2);

// Enable Do Not Track HTTP header
user_pref("privacy.donottrackheader.enabled", true);




//////////////////// privacy_strict

// Disable all history
user_pref("places.history.enabled", false);
user_pref("browser.formfill.enable", false);
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.topsites", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);

// Enable HTTPS-Only mode
user_pref("dom.security.https_only_mode", true);

// Enable strict content blocking
user_pref("browser.contentblocking.category", "strict");

// Enable Resist Fingerprinting
user_pref("privacy.resistFingerprinting", true);
user_pref("browser.startup.blankWindow", false);

// Enable First Party Isolation
user_pref("privacy.firstparty.isolate", true);




//////////////////// sensible

// Disable default browser check
user_pref("browser.shell.checkDefaultBrowser", false);

// Disable unnecessary warnings
user_pref("browser.aboutConfig.showWarning", false);
user_pref("browser.tabs.warnOnClose", false);
user_pref("browser.tabs.warnOnOpen", false);
user_pref("full-screen-api.warning.delay", 0);
user_pref("full-screen-api.warning.timeout", 0);

// Set default items to clear when clearing history
user_pref("privacy.cpd.offlineApps", true);
user_pref("privacy.cpd.siteSettings", true);
user_pref("privacy.sanitize.timeSpan", 0);

// Open bookmarks in a new tab
user_pref("browser.tabs.loadBookmarksInTabs", true);

// Disable alt menu
user_pref("ui.key.menuAccessKey", 0);




//////////////////// katprefs

// Disable favicons
user_pref("browser.chrome.site_icons", false);
user_pref("browser.tabs.tabMinWidth", 200);

// Disable browser animations
user_pref("ui.prefersReducedMotion", 1);

// Hide bookmarks toolbar
user_pref("browser.toolbars.bookmarks.visibility", "never");

// Disable location bar suggestions
user_pref("browser.urlbar.maxRichResults", 0);

// Set dark compact theme
user_pref("extensions.activeThemeID", "firefox-compact-dark@mozilla.org");
user_pref("devtools.theme", "dark");
user_pref("browser.uidensity", 1);

// Tweak visible UI elements
user_pref("browser.uiCustomization.state", '{"placements":{"widget-overflow-fixed-list":[],"nav-bar":["back-button","forward-button","stop-reload-button","urlbar-container","downloads-button","fxa-toolbar-menu-button","ublock0_raymondhill_net-browser-action"],"toolbar-menubar":["menubar-items"],"TabsToolbar":["tabbrowser-tabs","new-tab-button"],"PersonalToolbar":[]},"seen":["ublock0_raymondhill_net-browser-action","developer-button"],"dirtyAreaCache":["nav-bar","PersonalToolbar","toolbar-menubar","TabsToolbar"],"currentVersion":17,"newElementCount":7}');




user_pref("_katfox_user", "User.js generated on Wed Jun  2 10:42:43 AM PDT 2021");
