// This borrows a LOT from arkenfox/user.js (commit 5f9bb59b9524d97dfe9f9fa2611667e292aee1d9)
// https://github.com/arkenfox/user.js

// Make Firefox less annoying
user_pref("browser.aboutConfig.showWarning", false);
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("browser.startup.page", 3);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.feeds.discoverystreamfeed", false);
user_pref("browser.library.activity-stream.enabled", false);
user_pref("browser.newtabpage.activity-stream.default.sites", "");
user_pref("geo.provider.network.url", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%");
user_pref("browser.region.network.url", "");
user_pref("browser.region.update.enabled", false);
user_pref("extensions.update.autoUpdateDefault", false);
user_pref("extensions.getAddons.cache.enabled", false);
user_pref("browser.search.update", false);
user_pref("extensions.getAddons.showPane", false);
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("toolkit.coverage.endpoint.base", "");
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.enabled", false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);
user_pref("captivedetect.canonicalURL", "");
user_pref("network.captive-portal-service.enabled", false);
user_pref("network.connectivity-service.enabled", false);
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.url", "");
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");
user_pref("extensions.systemAddon.update.enabled", false);
user_pref("extensions.systemAddon.update.url", "");
user_pref("browser.ping-centre.telemetry", false);
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.available", "off");
user_pref("extensions.formautofill.creditCards.available", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.heuristics.enabled", false);
user_pref("extensions.webcompat-reporter.enabled", false);
user_pref("browser.fixup.alternate.enabled", false);
user_pref("browser.urlbar.trimURLs", false);
user_pref("browser.sessionstore.enabled", false);
user_pref("media.autoplay.default", 5);
user_pref("media.autoplay.blocking_policy", 2);
user_pref("dom.disable_window_move_resize", true);
user_pref("browser.link.open_newwindow", 3);
user_pref("browser.link.open_newwindow.restriction", 0);
user_pref("dom.disable_open_during_load", true);
user_pref("dom.popup_allowed_events", "click dblclick mousedown pointerdown");
user_pref("dom.push.enabled", false);
user_pref("dom.push.userAgentID", "");
user_pref("dom.disable_beforeunload", true);
user_pref("middlemouse.contentLoadURL", false);
user_pref("permissions.default.shortcuts", 2);
user_pref("pdfjs.disabled", false);
user_pref("browser.download.folderList", 1);
user_pref("browser.download.useDownloadDir", false);
user_pref("browser.download.manager.addToRecentDocs", false);
user_pref("browser.download.forbid_open_with", true);
user_pref("ui.prefersReducedMotion", 1);
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
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("accessibility.typeaheadfind", false);
user_pref("clipboard.autocopy", false);
user_pref("layout.spellcheckDefault", 2);
user_pref("browser.backspace_action", 0);
user_pref("browser.tabs.closeWindowWithLastTab", true);
user_pref("browser.tabs.loadBookmarksInTabs", false);
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
//user_pref("xpinstall.signatures.required", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("browser.newtabpage.activity-stream.feeds.system.topsites", false);
user_pref("browser.newtabpage.activity-stream.feeds.system.topstories", false);
user_pref("extensions.activeThemeID", "firefox-compact-dark@mozilla.org");
user_pref("browser.uiCustomization.state", '{"placements":{"widget-overflow-fixed-list":[],"nav-bar":["back-button","forward-button","stop-reload-button","urlbar-container","downloads-button","fxa-toolbar-menu-button","ublock0_raymondhill_net-browser-action"],"toolbar-menubar":["menubar-items"],"TabsToolbar":["tabbrowser-tabs","new-tab-button"],"PersonalToolbar":["personal-bookmarks"]},"seen":["ublock0_raymondhill_net-browser-action","developer-button"],"dirtyAreaCache":["nav-bar"],"currentVersion":16,"newElementCount":3}');
user_pref("browser.pageActions.persistedActions", '{"version":1,"ids":["bookmark","pinTab","bookmarkSeparator","copyURL","emailLink","addSearchEngine","screenshots_mozilla_org"],"idsInUrlbar":[]}');
user_pref("browser.toolbars.bookmarks.visibility", "never");

// Various privacy/security improvements
user_pref("browser.send_pings", false);
user_pref("browser.send_pings.require_same_host", true);
user_pref("network.http.altsvc.enabled", false);
user_pref("network.http.altsvc.oe", false);
user_pref("network.proxy.socks_remote_dns", true);
user_pref("network.file.disable_unc_paths", true);
user_pref("network.gio.supported-protocols", "");
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.urlbar.dnsResolveSingleWordsAfterSearch", 0);
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.bookmark", false);
user_pref("browser.urlbar.suggest.topsites", false);
user_pref("browser.urlbar.autoFill", false);
user_pref("browser.formfill.enable", false);
user_pref("places.history.enabled", false);
user_pref("signon.rememberSignons", false);
user_pref("signon.autofillForms", false);
user_pref("signon.formlessCapture.enabled", false);
user_pref("network.auth.subresource-http-auth-allow", 1);
user_pref("permissions.memory_only", true);
user_pref("browser.privatebrowsing.forceMediaMemoryCache", true);
user_pref("media.memory_cache_max_size", 65536);
user_pref("browser.sessionstore.privacy_level", 2);
user_pref("browser.shell.shortcutFavicons", false);
user_pref("browser.chrome.site_icons", false);
user_pref("gfx.downloadable_fonts.fallback_delay", -1);
user_pref("gfx.font_rendering.opentype_svg.enabled", false);
user_pref("gfx.font_rendering.graphite.enabled", false);
user_pref("privacy.donottrackheader.enabled", true);
user_pref("plugin.state.flash", 0);
user_pref("media.gmp-provider.enabled", false);
user_pref("media.eme.enabled", false);             // Disables DRM
user_pref("webgl.min_capability_mode", true);
user_pref("dom.serviceWorkers.enabled", false);
user_pref("dom.webnotifications.enabled", false);
user_pref("dom.webnotifications.serviceworker.enabled", false);
// user_pref("dom.event.clipboardevents.enabled", false); // Can break copy/paste on some online text editors
// user_pref("media.navigator.enabled", false); // Breaks WebRTC
user_pref("accessibility.force_disabled", 1);
user_pref("beacon.enabled", false);
user_pref("browser.helperApps.deleteTempFileOnExit", true);
user_pref("browser.pagethumbnails.capturing_disabled", true);
user_pref("browser.uitour.enabled", false);
user_pref("browser.uitour.url", "");
user_pref("mathml.disabled", true);
user_pref("permissions.manager.defaultsUrl", "");
user_pref("webchannel.allowObject.urlWhitelist", "");
user_pref("network.IDN_show_punycode", true);
user_pref("browser.display.use_system_colors", false);
user_pref("permissions.delegation.enabled", false);
user_pref("extensions.postDownloadThirdPartyPrompt", false);
user_pref("extensions.webextensions.restrictedDomains", "");
user_pref("security.dialog_enable_delay", 700);
user_pref("network.cookie.cookieBehavior", 3);
user_pref("browser.contentblocking.category", "custom");
user_pref("network.cookie.thirdparty.sessionOnly", true);
user_pref("network.cookie.thirdparty.nonsecureSessionOnly", true);
	user_pref("privacy.trackingprotection.enabled", true);
	user_pref("privacy.trackingprotection.socialtracking.enabled", true);
//user_pref("network.cookie.lifetimePolicy", 2);
//user_pref("dom.storage.enabled", false);
user_pref("dom.storageManager.enabled", false);
user_pref("dom.storage_access.enabled", false);
user_pref("dom.storage.next_gen", true);
user_pref("privacy.sanitize.sanitizeOnShutdown", true);
user_pref("privacy.clearOnShutdown.cache", true);
user_pref("privacy.clearOnShutdown.cookies", false);
user_pref("privacy.clearOnShutdown.downloads", true);
user_pref("privacy.clearOnShutdown.formdata", true);
user_pref("privacy.clearOnShutdown.history", true);
user_pref("privacy.clearOnShutdown.offlineApps", true);
user_pref("privacy.clearOnShutdown.sessions", false);
user_pref("privacy.clearOnShutdown.siteSettings", false);
user_pref("privacy.cpd.cache", true);
user_pref("privacy.cpd.cookies", true);
user_pref("privacy.cpd.downloads", true);
user_pref("privacy.cpd.formdata", true);
user_pref("privacy.cpd.history", true);
user_pref("privacy.cpd.offlineApps", true);
user_pref("privacy.cpd.passwords", false);
user_pref("privacy.cpd.sessions", true);
user_pref("privacy.cpd.siteSettings", true);
user_pref("privacy.clearOnShutdown.openWindows", true);
user_pref("privacy.cpd.openWindows", true);
user_pref("privacy.sanitize.timeSpan", 0);
user_pref("privacy.firstparty.isolate", true); // Can break some login pages
user_pref("privacy.resistFingerprinting", true);
user_pref("privacy.resistFingerprinting.block_mozAddonManager", true);
//user_pref("privacy.resistFingerprinting.letterboxing", true); // Looks ugly af

// uBlock Origin disables prefetching, so these rules *shouldn't* actually affect performance much.
user_pref("network.prefetch-next", false);
user_pref("network.dns.disablePrefetch", true);
user_pref("network.predictor.enabled", false);
user_pref("network.http.speculative-parallel-limit", 0);
user_pref("browser.urlbar.speculativeConnect.enabled", false);

// Privacy/security improvements that impact performance
user_pref("security.tls.enable_0rtt_data", false);
//user_pref("webgl.disabled", true);
//user_pref("webgl.enable-webgl2", false);
user_pref("javascript.options.asmjs", false);
//user_pref("javascript.options.ion", false);
//user_pref("javascript.options.baselinejit", false);
//user_pref("javascript.options.jit_trustedprincipals", true);
//user_pref("javascript.options.wasm", false); // WASM is used by uBlock Origin to help performance, so it should stay enabled.
//user_pref("layers.acceleration.disabled", true);
user_pref("browser.cache.disk.enable", false);

// TLS hardening
user_pref("security.ssl.require_safe_negotiation", true);
user_pref("security.tls.version.enable-deprecated", false);
user_pref("security.ssl.enable_ocsp_stapling", true);
user_pref("security.OCSP.enabled", 1);
user_pref("security.OCSP.require", true);
user_pref("security.pki.sha1_enforcement_level", 1);
user_pref("security.nocertdb", true);
user_pref("security.cert_pinning.enforcement_level", 2);
user_pref("security.remote_settings.crlite_filters.enabled", true);
user_pref("security.pki.crlite_mode", 2);
user_pref("security.mixed_content.block_active_content", true);
user_pref("security.mixed_content.block_display_content", true);
user_pref("security.mixed_content.block_object_subrequest", true);
user_pref("dom.security.https_only_mode", true);
user_pref("dom.security.https_only_mode_send_http_background_request", false);
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
user_pref("browser.xul.error_pages.expert_bad_cert", true);
user_pref("security.insecure_connection_text.enabled", true);

// Performance optimizations
// NOTE: These may cause significant system instability, and should be used with extreme caution.

/*user_pref("layers.acceleration.force-enabled", true);
user_pref("gfx.webrender.all", true);
user_pref("gfx.webrender.compositor", true);
user_pref("gfx.webrender.enabled", true);*/

