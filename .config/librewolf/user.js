//////////////////// nomozilla

// Disable Activity Stream telemetry
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);

// Disable Activity Stream Snippets
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);

// Activity Stream Top Stories, Pocket-based and/or sponsored content
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.feeds.discoverystreamfeed", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.urlbar.sponsoredTopSites", false);

// Clear default topsites
user_pref("browser.newtabpage.activity-stream.default.sites", "");

// Use Mozilla geolocation instead of Google
user_pref("geo.provider.network.url", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%");

// Disable region updates
user_pref("browser.region.network.url", "");
user_pref("browser.region.update.enabled", false);

// Disable automatically *installing* Firefox updates
user_pref("app.update.auto", false);

// Disable sending plugin crash reports
user_pref("dom.ipc.plugins.reportCrashURL", false);

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
user_pref("startup.homepage_welcome_url", "");
user_pref("startup.homepage_welcome_url.additional", "");
user_pref("startup.homepage_override_url", "");

// Disable "What's New" toolbar icon
user_pref("browser.messaging-system.whatsNewPanel.enabled", false);

// Disable CFR
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);




//////////////////// nomozilla_standard

// Disable automatically installing extension/theme updates
user_pref("extensions.update.autoUpdateDefault", false);

// Disable Safe Browsing
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.url", "");
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);

// Disable Web Compatibility Reporter
user_pref("extensions.webcompat-reporter.enabled", false);

// Disable Mozilla Push Server
user_pref("dom.push.enabled", false);
user_pref("dom.push.userAgentID", "");

// Disable Pocket Account
user_pref("extensions.pocket.enabled", false);

// Disable Firefox Accounts & Sync
user_pref("identity.fxaccounts.enabled", false);




//////////////////// nomozilla_strict

// Disable auto checking for extension/theme updates
user_pref("extensions.update.enabled", false);

// Disable extension metadata
user_pref("extensions.getAddons.cache.enabled", false);

// Disable Captive Portal detection
user_pref("network.captive-portal-service.enabled", false);

// Disable Network Connectivity checks
user_pref("network.connectivity-service.enabled", false);




//////////////////// privacy

// Disable prefetching
user_pref("network.prefetch-next", false);
user_pref("network.dns.disablePrefetch", true);
user_pref("network.predictor.enabled", false);
user_pref("network.http.speculative-parallel-limit", 0);

// Disable domain guessing
user_pref("browser.fixup.alternate.enabled", false);

// Disable location bar speculative connections
user_pref("browser.urlbar.speculativeConnect.enabled", false);

// Disable DNS word resolving (huge privacy leak)
user_pref("browser.urlbar.dnsResolveSingleWordsAfterSearch", 0);

// Enable Do Not Track HTTP header
user_pref("privacy.donottrackheader.enabled", true);

// Prevent scripts from moving/resizing open windows
user_pref("dom.disable_window_move_resize", true);

// Open links targeting new windows in a new tab
user_pref("browser.link.open_newwindow", 3);
user_pref("browser.link.open_newwindow.restriction", 0);




//////////////////// privacy_standard

// Disable sendBeacon
user_pref("beacon.enabled", false);

// Make third-party cookies session only
user_pref("network.cookie.thirdparty.sessionOnly", true);
user_pref("network.cookie.thirdparty.nonsecureSessionOnly", true);

// Enable strict content blocking
user_pref("browser.contentblocking.category", "strict");

// Enable Resist Fingerprinting
user_pref("privacy.resistFingerprinting", true);
user_pref("browser.startup.blankWindow", false);

// Enable First Party Isolation
user_pref("privacy.firstparty.isolate", true);




//////////////////// privacy_strict

// Disable live search suggestions
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.searches", false);

// Disable HTTP Alternate Services
user_pref("network.http.altsvc.enabled", false);
user_pref("network.http.altsvc.oe", false);

// Only send referer if base domains match
user_pref("network.http.referer.XOriginPolicy", 1);

// Only send scheme://host:port for cross-origin referers
user_pref("network.http.referer.XOriginTrimmingPolicy", 2);

// Disable mozAddonManager Web API
user_pref("extensions.webextensions.restrictedDomains", "");
user_pref("privacy.resistFingerprinting.block_mozAddonManager", true);




//////////////////// security

// Display the full URL in the location bar
user_pref("browser.urlbar.trimURLs", false);

// Disable media cache from writing to disk in Private Browsing
user_pref("browser.privatebrowsing.forceMediaMemoryCache", true);
user_pref("media.memory_cache_max_size", 65536);

// Enforce CRLite
user_pref("security.remote_settings.crlite_filters.enabled", true);
user_pref("security.pki.crlite_mode", 2);

// Upgrade mixed content (same behavior as OOTB Chrome)
user_pref("security.mixed_content.upgrade_display_content", true);

// Enable HTTPS-Only mode in private browsing
user_pref("dom.security.https_only_mode_pbm", true);

// Display warning text for insecure connections
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
user_pref("security.insecure_connection_text.enabled", true);

// Prevent websites from overriding Firefox keyboard shortcuts
user_pref("permissions.default.shortcuts", 2);

// Always show Punycode in domain names
user_pref("network.IDN_show_punycode", true);

// Disable permissions delegation
user_pref("permissions.delegation.enabled", false);

// Set default items to clear when clearing history
user_pref("privacy.cpd.cache", true);
user_pref("privacy.cpd.cookies", true);
user_pref("privacy.cpd.downloads", true);
user_pref("privacy.cpd.formdata", true);
user_pref("privacy.cpd.history", true);
user_pref("privacy.cpd.offlineApps", true);
user_pref("privacy.cpd.passwords", false);
user_pref("privacy.cpd.sessions", true);
user_pref("privacy.cpd.siteSettings", false);
user_pref("privacy.cpd.openWindows", true);
user_pref("privacy.sanitize.timeSpan", 0);




//////////////////// security_tls

// Make OCSP fetches hard-fail
user_pref("security.OCSP.require", true);

// Enable HTTPS-Only mode
user_pref("dom.security.https_only_mode", true);




//////////////////// security_data

// Make permissions session-only
user_pref("permissions.memory_only", true);

// Disable Form Autofill
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.available", "off");
user_pref("extensions.formautofill.creditCards.available", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.heuristics.enabled", false);

// Don't suggest history entries in location bar
user_pref("browser.urlbar.suggest.history", false);

// Disable search and form history
user_pref("browser.formfill.enable", false);

// Disable browsing and download history
user_pref("places.history.enabled", false);

// Disable Windows jumplist
user_pref("browser.taskbar.lists.enabled", false);
user_pref("browser.taskbar.lists.frequent.enabled", false);
user_pref("browser.taskbar.lists.recent.enabled", false);
user_pref("browser.taskbar.lists.tasks.enabled", false);

// Disable saving passwords
user_pref("signon.rememberSignons", false);

// Disable form/password autofill
user_pref("signon.autofillForms", false);

// Disable formless login capture
user_pref("signon.formlessCapture.enabled", false);

// Limit number of tab undo options
user_pref("browser.sessionstore.max_tabs_undo", 3);

// Disable storing additional session data
user_pref("browser.sessionstore.privacy_level", 2);

// Disable page thumbnail collection
user_pref("browser.pagethumbnails.capturing_disabled", true);

// Don't add downloads to "recent documents" list
user_pref("browser.download.manager.addToRecentDocs", false);

// Disable Top Sites and Highlights
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);




//////////////////// security_hardened

// Disable media plugins
user_pref("media.gmp-provider.enabled", false);

// Disable all DRM
user_pref("media.eme.enabled", false);

// Disable asm.js
user_pref("javascript.options.asmjs", false);

// Remove special permissions for mozilla domains
user_pref("permissions.manager.defaultsUrl", "");

// Remove webchannel whitelist
user_pref("webchannel.allowObject.urlWhitelist", "");




//////////////////// performance

// Increase minimum interval between session saves
user_pref("browser.sessionstore.interval", 60000);




//////////////////// sensible

// Disable about:config warning
user_pref("browser.aboutConfig.showWarning", false);

// Disable default browser check
user_pref("browser.shell.checkDefaultBrowser", false);

// Disable automatic start after reboot
user_pref("toolkit.winRegisterApplicationRestart", false);

// Disable autoplay
user_pref("media.autoplay.default", 5);
user_pref("media.autoplay.blocking_policy", 2);

// Disable page close confirmation dialogs
user_pref("dom.disable_beforeunload", true);

// Disable unnecessary warnings
user_pref("browser.tabs.warnOnClose", false);
user_pref("browser.tabs.warnOnCloseOtherTabs", false);
user_pref("browser.tabs.warnOnOpen", false);
user_pref("full-screen-api.warning.delay", 0);
user_pref("full-screen-api.warning.timeout", 0);

// Open bookmarks in a new tab
user_pref("browser.tabs.loadBookmarksInTabs", true);

// Disable alt menu
user_pref("ui.key.menuAccessKey", 0);




//////////////////// katprefs

// Disable location bar dropdown
user_pref("browser.urlbar.maxRichResults", 0);

// Disable favicons
user_pref("browser.chrome.site_icons", false);
user_pref("alerts.showFavicons", false);

// Disable Web Notifications
user_pref("dom.webnotifications.enabled", false);
user_pref("dom.webnotifications.serviceworker.enabled", false);

// Enable "Find As You Type"
user_pref("accessibility.typeaheadfind", true);

// Map backspace to "previous page"
user_pref("browser.backspace_action", 0);

// Disable browser animations
user_pref("ui.prefersReducedMotion", 1);

// Hide bookmarks toolbar
user_pref("browser.toolbars.bookmarks.visibility", "never");

// Set dark compact theme
user_pref("extensions.activeThemeID", "firefox-compact-dark@mozilla.org");
user_pref("devtools.theme", "dark");
user_pref("browser.uidensity", 1);

// Tweak visible UI elements
user_pref("browser.uiCustomization.state", '{"placements":{"widget-overflow-fixed-list":[],"nav-bar":["back-button","forward-button","stop-reload-button","urlbar-container","downloads-button","fxa-toolbar-menu-button","ublock0_raymondhill_net-browser-action"],"toolbar-menubar":["menubar-items"],"TabsToolbar":["tabbrowser-tabs","new-tab-button"],"PersonalToolbar":["personal-bookmarks"]},"seen":["ublock0_raymondhill_net-browser-action","developer-button"],"dirtyAreaCache":["nav-bar"],"currentVersion":16,"newElementCount":3}');
user_pref("browser.pageActions.persistedActions", '{"version":1,"ids":["bookmark","pinTab","bookmarkSeparator","copyURL","emailLink","addSearchEngine","screenshots_mozilla_org"],"idsInUrlbar":[]}');




user_pref("_katfox_user", "User.js generated on Tue Apr 27 03:24:53 AM PDT 2021");
