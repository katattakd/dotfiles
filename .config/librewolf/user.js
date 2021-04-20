// Based lightly on arkenfox/user.js
// - arkenfox commit 9b8735a87a1696a0124246b92d5c6beadf2d4567

// Warning: This Configuration is LibreWolf specific, and should **never** be used with vanilla Firefox!

// CUSTOM = Prefs not in arkenfox/user.js
// 		* Configures UI settings, may break on update
// 		* Enables WebRender
// 		* Enables Local Storage Next Generation
// 0800 = Search bar / History
// 1200 = HTTPS
// 2000 = Media / Camera / Mic
// 2200 = Window management
// 2300 = Web workers
// 4000 = First Party Isolation
// 5000 = Personal
// END = Easy check for syntax errors

// CUSTOM
user_pref("extensions.activeThemeID", "firefox-compact-dark@mozilla.org");
user_pref("browser.uiCustomization.state", '{"placements":{"widget-overflow-fixed-list":[],"nav-bar":["back-button","forward-button","stop-reload-button","urlbar-container","downloads-button","fxa-toolbar-menu-button","ublock0_raymondhill_net-browser-action"],"toolbar-menubar":["menubar-items"],"TabsToolbar":["tabbrowser-tabs","new-tab-button"],"PersonalToolbar":["personal-bookmarks"]},"seen":["ublock0_raymondhill_net-browser-action","developer-button"],"dirtyAreaCache":["nav-bar"],"currentVersion":16,"newElementCount":3}');
user_pref("browser.pageActions.persistedActions", '{"version":1,"ids":["bookmark","pinTab","bookmarkSeparator","copyURL","emailLink","addSearchEngine","screenshots_mozilla_org"],"idsInUrlbar":[]}');
user_pref("browser.toolbars.bookmarks.visibility", "never");
user_pref("gfx.webrender.all", true);
user_pref("gfx.webrender.compositor", true);
user_pref("gfx.webrender.enabled", true);
user_pref("dom.storage.next_gen", true);
user_pref("network.dns.disableIPv6", false);
user_pref("ui.prefersReducedMotion", 1);
user_pref("browser.chrome.site_icons", false);
user_pref("privacy.clearOnShutdown.cache", false);
user_pref("privacy.clearOnShutdown.cookies", false);

user_pref("browser.urlbar.dnsResolveSingleWordsAfterSearch", 0); // 0811

// 0850a
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.bookmark", false);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.topsites", false);

user_pref("browser.urlbar.suggest.engines", false); // 0850b
user_pref("browser.urlbar.maxRichResults", 0); // 0850c
user_pref("browser.urlbar.autoFill", false); // 0850d

// 1224
user_pref("security.remote_settings.crlite_filters.enabled", true);
user_pref("security.pki.crlite_mode", 2);

user_pref("dom.popup_allowed_events", "click dblclick mousedown pointerdown"); // 2212

// 2304
user_pref("dom.webnotifications.enabled", false);
user_pref("dom.webnotifications.serviceworker.enabled", false);

user_pref("privacy.firstparty.isolate", true); // 4001

// 5000
user_pref("browser.tabs.warnOnClose", false);
user_pref("browser.tabs.warnOnCloseOtherTabs", false);
user_pref("browser.tabs.warnOnOpen", false);
user_pref("full-screen-api.warning.delay", 0);
user_pref("full-screen-api.warning.timeout", 0);
user_pref("browser.download.autohideButton", true);
user_pref("browser.backspace_action", 0);
user_pref("ui.key.menuAccessKey", 0);

// END
user_pref("_user.js.parrot", "it works");
