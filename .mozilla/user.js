// Based heavily on arkenfox/user.js
// - commit b1927f9de1e7a2559f0e83c484d5cb243a4d5722
// https://github.com/arkenfox/user.js

// Configuration which may break sites is listed with a "-".
// Configuration which may *accidentally break* the browser is listed with a "*".
// Other configuration, which is very unlikely to result in breakage, is not listed. Purposeful breakage of *browser* functionality is also not listed.

// CUSTOM = Prefs not in arkenfox/user.js
// 		* Configures UI settings, may break on update
// 		* Enables WebRender
// 0000 - 0100 = Startup UI
// 		* Configures the new tab page, may break on update
// 0200 = Geolocation
// 0300 = Telemetry / auto-update
// 		* Disables automatic update of extensions
// 0400 = Safe browsing
// 0500 = System add-ons
// 0600 = Implicit outbound
// 0800 = Search bar / History
// 0900 = Password storage
// 1000 = Cache / Session restore
// 1200 = HTTPS
// 		- Enables OCSP hard-fail
// 		- Blocks all mixed content
// 1400 = Fonts
// 1600 = HTTP Headers
// 		- Doesn't send referrer by default in private browsing
// 1700 = Containers
// 1800 = Plugins
// 		- Disables DRM & external codecs
// 2000 = Media / Camera / Mic
// 		- Hardens WebGL
// 		- Disables HTML5 autoplay
// 2200 = Window management
// 		- Prevents JS from moving/resizing windows
// 		- Blocks pop-up windows
// 2300 = Web workers
// 		- Disables Service Workers, Web Notifications, and Push Notifications
// 2400 = DOM & JavaScript
// 		- Disables asm.js
// 2600 = Misc
// 		* Disables accessibility services
// 		- Disables sendBeacon
// 		- Prevents websites from overriding Firefox keyboard shortcuts
// 2700 = Persistent Storage
// 		- Changes content blocking settings
// 		- Makes 3rd party cookies session-only
// 		- Disables Storage API / Storage Access API
// 		* Enables Local Storage Next Generation
// 2800 = Shutdown
// 4000 = First Party Isolation
// 		- May break some login pages / site functionality
// 4500 = Resist Fingerprinting
//		- May break some site functionality
// 5000 = Personal
// END = Easy check for syntax errors

// CUSTOM
user_pref("browser.library.activity-stream.enabled", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("browser.newtabpage.activity-stream.feeds.system.topsites", false);
user_pref("browser.newtabpage.activity-stream.feeds.system.topstories", false);
user_pref("extensions.activeThemeID", "firefox-compact-dark@mozilla.org");
user_pref("browser.uiCustomization.state", '{"placements":{"widget-overflow-fixed-list":[],"nav-bar":["back-button","forward-button","stop-reload-button","urlbar-container","downloads-button","fxa-toolbar-menu-button","ublock0_raymondhill_net-browser-action"],"toolbar-menubar":["menubar-items"],"TabsToolbar":["tabbrowser-tabs","new-tab-button"],"PersonalToolbar":["personal-bookmarks"]},"seen":["ublock0_raymondhill_net-browser-action","developer-button"],"dirtyAreaCache":["nav-bar"],"currentVersion":16,"newElementCount":3}');
user_pref("browser.pageActions.persistedActions", '{"version":1,"ids":["bookmark","pinTab","bookmarkSeparator","copyURL","emailLink","addSearchEngine","screenshots_mozilla_org"],"idsInUrlbar":[]}');
user_pref("browser.toolbars.bookmarks.visibility", "never");
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.socialtracking.enabled", true);
user_pref("layers.acceleration.force-enabled", true);
user_pref("gfx.webrender.all", true);
user_pref("gfx.webrender.compositor", true);
user_pref("gfx.webrender.enabled", true);
user_pref("gfx.webrender.software", true); // Pinebook Pro specific workaround


user_pref("browser.aboutConfig.showWarning", false); // 0000

user_pref("browser.shell.checkDefaultBrowser", false); // 0101
user_pref("browser.startup.page", 1); // 0102

// 0105a
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);

user_pref("browser.newtabpage.activity-stream.feeds.snippets", false); // 0105b

// 0105c
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.feeds.discoverystreamfeed", false);

user_pref("browser.newtabpage.activity-stream.default.sites", ""); // 0105e


user_pref("geo.provider.network.url", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%"); // 0203

// 0207
user_pref("browser.region.network.url", "");
user_pref("browser.region.update.enabled", false);


user_pref("app.update.auto", false); // 0302a
user_pref("extensions.update.autoUpdateDefault", false); // 0302b
user_pref("extensions.getAddons.cache.enabled", false); // 0306
user_pref("browser.search.update", false); // 0308
user_pref("dom.ipc.plugins.reportCrashURL", false); // 0310
user_pref("extensions.getAddons.showPane", false); // 0320
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false); // 0321

// 0330
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);

// 0331
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("toolkit.coverage.endpoint.base", "");


user_pref("datareporting.healthreport.uploadEnabled", false); // 0340
user_pref("datareporting.policy.dataSubmissionEnabled", false); // 0341
user_pref("app.shield.optoutstudies.enabled", false); // 0342
user_pref("browser.discovery.enabled", false); // 0343

// 0350
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);

user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false); // 0351

// 0390
user_pref("captivedetect.canonicalURL", "");
user_pref("network.captive-portal-service.enabled", false);

user_pref("network.connectivity-service.enabled", false); // 0391


// 0410
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);

user_pref("browser.safebrowsing.downloads.enabled", false); // 0411

// 0412
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.url", "");

// 0413
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);


// 0503
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");

// 0505
user_pref("extensions.systemAddon.update.enabled", false);
user_pref("extensions.systemAddon.update.url", "");

user_pref("browser.ping-centre.telemetry", false); // 0506

// 0517
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.available", "off");
user_pref("extensions.formautofill.creditCards.available", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.heuristics.enabled", false);

user_pref("extensions.webcompat-reporter.enabled", false); // 0518


user_pref("network.prefetch-next", false); // 0601
user_pref("network.dns.disablePrefetch", true); // 0602
user_pref("network.predictor.enabled", false); // 0603

user_pref("network.http.speculative-parallel-limit", 0); // 0605


user_pref("browser.fixup.alternate.enabled", false); // 0802
user_pref("browser.urlbar.trimURLs", false); // 0803
user_pref("layout.css.visited_links_enabled", false); // 0805

// 0807
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.searches", false);

user_pref("browser.urlbar.speculativeConnect.enabled", false); // 0810
user_pref("browser.urlbar.dnsResolveSingleWordsAfterSearch", 0); // 0811

// 0850a
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.bookmark", false);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.topsites", false);

user_pref("browser.urlbar.suggest.engines", false); // 0850b
user_pref("browser.urlbar.maxRichResults", 0); // 0850c
user_pref("browser.urlbar.autoFill", false); // 0850d

user_pref("browser.formfill.enable", false); // 0860
user_pref("places.history.enabled", false); // 0862


user_pref("signon.rememberSignons", false); // 0901
user_pref("signon.autofillForms", false); // 0905
user_pref("signon.formlessCapture.enabled", false); // 0909
user_pref("network.auth.subresource-http-auth-allow", 1); // 0912


user_pref("browser.cache.disk.enable", false); // 1001
user_pref("permissions.memory_only", true); // 1006

// 1007
user_pref("browser.privatebrowsing.forceMediaMemoryCache", true);
user_pref("media.memory_cache_max_size", 65536);

user_pref("browser.sessionstore.max_tabs_undo", 3); // 1020
user_pref("browser.sessionstore.privacy_level", 2); // 1021
user_pref("browser.sessionstore.resume_from_crash", false); // 1022
user_pref("browser.sessionstore.interval", 30000); // 1023
user_pref("browser.shell.shortcutFavicons", false); // 1030
user_pref("browser.chrome.site_icons", false); // 1031


user_pref("security.ssl.require_safe_negotiation", true); // 1201
user_pref("security.tls.version.enable-deprecated", false); // 1203
user_pref("security.tls.enable_0rtt_data", false); // 1206
user_pref("security.ssl.enable_ocsp_stapling", true); // 1210
user_pref("security.OCSP.enabled", 1); // 1211
user_pref("security.OCSP.require", true); // 1212
user_pref("security.pki.sha1_enforcement_level", 1); // 1220
user_pref("security.nocertdb", true); // 1222
user_pref("security.cert_pinning.enforcement_level", 2); // 1223

// 1224
user_pref("security.remote_settings.crlite_filters.enabled", true);
user_pref("security.pki.crlite_mode", 2);

user_pref("security.mixed_content.block_display_content", true); // 1241
user_pref("security.mixed_content.block_object_subrequest", true); // 1243
user_pref("dom.security.https_only_mode", true); // 1244
user_pref("dom.security.https_only_mode_send_http_background_request", false); // 1246
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true); // 1270
user_pref("browser.ssl_override_behavior", 1); // 1271
user_pref("browser.xul.error_pages.expert_bad_cert", true); // 1272
user_pref("security.insecure_connection_text.enabled", true); // 1273


user_pref("gfx.font_rendering.graphite.enabled", false); // 1408


user_pref("network.http.referer.XOriginPolicy", 1); // 1603
user_pref("network.http.referer.XOriginTrimmingPolicy", 2); // 1604
user_pref("privacy.donottrackheader.enabled", true); // 1610


user_pref("privacy.userContext.ui.enabled", true); // 1701
user_pref("privacy.userContext.enabled", true); // 1702


user_pref("media.gmp-provider.enabled", false); // 1820
user_pref("media.eme.enabled", false); // 1830


user_pref("webgl.min_capability_mode", true); // 2012

user_pref("media.autoplay.default", 5); // 2030
user_pref("media.autoplay.blocking_policy", 2); // 2031


user_pref("dom.disable_window_move_resize", true); // 2202

// 2203
user_pref("browser.link.open_newwindow", 3);
user_pref("browser.link.open_newwindow.restriction", 0);

user_pref("dom.disable_open_during_load", true); // 2210
user_pref("dom.popup_allowed_events", "click dblclick mousedown pointerdown"); // 2212


user_pref("dom.serviceWorkers.enabled", false); // 2302

// 2304
user_pref("dom.webnotifications.enabled", false);
user_pref("dom.webnotifications.serviceworker.enabled", false);

// 2305
user_pref("dom.push.enabled", false);
user_pref("dom.push.userAgentID", "");


user_pref("dom.disable_beforeunload", true); // 2404
user_pref("dom.vibrator.enabled", false); // 2414
user_pref("javascript.options.asmjs", false); // 2420


user_pref("accessibility.force_disabled", 1); // 2601
user_pref("beacon.enabled", false); // 2602
user_pref("browser.helperApps.deleteTempFileOnExit", true); // 2603
user_pref("browser.pagethumbnails.capturing_disabled", true); // 2604

// 2606
user_pref("browser.uitour.enabled", false);
user_pref("browser.uitour.url", "");

user_pref("devtools.chrome.enabled", false); // 2607
user_pref("middlemouse.contentLoadURL", false); // 2611
user_pref("permissions.default.shortcuts", 2); // 2615
user_pref("permissions.manager.defaultsUrl", ""); // 2616
user_pref("webchannel.allowObject.urlWhitelist", ""); // 2617
user_pref("network.IDN_show_punycode", true); // 2619
user_pref("permissions.delegation.enabled", false); // 2623


user_pref("browser.download.folderList", 2); // 2650
user_pref("browser.download.useDownloadDir", false); // 2651
user_pref("browser.download.manager.addToRecentDocs", false); // 2652
user_pref("extensions.webextensions.restrictedDomains", ""); // 2662
user_pref("security.dialog_enable_delay", 700); // 2684


user_pref("browser.contentblocking.category", "strict"); // 2701

user_pref("network.cookie.thirdparty.sessionOnly", true); // 2702
user_pref("dom.caches.enabled", false); // 2740
user_pref("dom.storageManager.enabled", false); // 2750
user_pref("dom.storage_access.enabled", false); // 2755
user_pref("dom.storage.next_gen", true); // 2760


user_pref("privacy.sanitize.sanitizeOnShutdown", true); // 2802

// 2803
user_pref("privacy.clearOnShutdown.cache", true);
user_pref("privacy.clearOnShutdown.formdata", true);
user_pref("privacy.clearOnShutdown.history", true);
user_pref("privacy.clearOnShutdown.offlineApps", true);
user_pref("privacy.clearOnShutdown.sessions", true);
user_pref("privacy.clearOnShutdown.siteSettings", false);

// 2804
user_pref("privacy.cpd.cache", true);
user_pref("privacy.cpd.cookies", true);
user_pref("privacy.cpd.formdata", true);
user_pref("privacy.cpd.history", true);
user_pref("privacy.cpd.offlineApps", true);
user_pref("privacy.cpd.passwords", false);
user_pref("privacy.cpd.sessions", true);
user_pref("privacy.cpd.siteSettings", false);

// 2805
user_pref("privacy.clearOnShutdown.openWindows", true);
user_pref("privacy.cpd.openWindows", true);

user_pref("privacy.sanitize.timeSpan", 0); // 2806


user_pref("privacy.firstparty.isolate", true); // 4001


user_pref("privacy.resistFingerprinting", true); // 4501
user_pref("privacy.resistFingerprinting.block_mozAddonManager", true); // 4503
user_pref("privacy.resistFingerprinting.letterboxing", false); // 4504
user_pref("browser.startup.blankWindow", false); // 4510
user_pref("ui.prefersReducedMotion", 1); // 4520


// 5000
user_pref("browser.startup.homepage_override.mstone", "ignore");
user_pref("startup.homepage_welcome_url", "");
user_pref("startup.homepage_welcome_url.additional", "");
user_pref("startup.homepage_override_url", "");
user_pref("browser.tabs.warnOnClose", false);
user_pref("browser.tabs.warnOnCloseOtherTabs", false);
user_pref("browser.tabs.warnOnOpen", false);
user_pref("full-screen-api.warning.delay", 0);
user_pref("full-screen-api.warning.timeout", 0);
user_pref("browser.download.autohideButton", true);
user_pref("accessibility.typeaheadfind", false);
user_pref("clipboard.autocopy", false);
user_pref("layout.spellcheckDefault", 2);
user_pref("browser.backspace_action", 0);
user_pref("browser.quitShortcut.disabled", true);
user_pref("browser.tabs.closeWindowWithLastTab", true);
user_pref("browser.urlbar.decodeURLsOnCopy", false);
user_pref("general.autoScroll", false);
user_pref("ui.key.menuAccessKey", 0);
user_pref("view_source.tab", true);
user_pref("browser.messaging-system.whatsNewPanel.enabled", false);
user_pref("extensions.pocket.enabled", false);
user_pref("identity.fxaccounts.enabled", false);
user_pref("browser.bookmarks.max_backups", 2);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);
user_pref("network.manage-offline-status", false);
// user_pref("xpinstall.signatures.required", false);

// END
user_pref("_user.js.parrot", "it works");
