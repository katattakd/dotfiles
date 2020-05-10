// This borrows a LOT from ghacks-user.js (commit bb1e5bfd54c5281f372e596712b91c8444c1c785)
// https://github.com/ghacksuserjs/ghacks-user.js/blob/master/user.js

// Get rid of some annoyances
user_pref("general.warnOnAboutConfig", false);
user_pref("browser.aboutConfig.showWarning", false);
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("browser.fixup.alternate.enabled", false);
user_pref("browser.urlbar.trimURLs", false);
user_pref("browser.urlbar.usepreloadedtopurls.enabled", false);
user_pref("browser.sessionstore.interval", 240000);
user_pref("media.autoplay.default", 5);
user_pref("browser.link.open_newwindow", 3);
user_pref("browser.link.open_newwindow.restriction", 0);
user_pref("dom.disable_open_during_load", true);
user_pref("dom.popup_allowed_events", "click dblclick");
user_pref("dom.serviceWorkers.enabled", false);
user_pref("dom.webnotifications.enabled", false);
user_pref("dom.webnotifications.serviceworker.enabled", false);
user_pref("dom.disable_beforeunload", true);
user_pref("browser.helperApps.deleteTempFileOnExit", true);
user_pref("browser.pagethumbnails.capturing_disabled", true);
user_pref("middlemouse.contentLoadURL", false);
user_pref("permissions.default.shortcuts", 2);
user_pref("pdfjs.disabled", false);
user_pref("browser.startup.homepage_override.mstone", "ignore");
user_pref("browser.tabs.warnOnClose", false);
user_pref("browser.tabs.warnOnCloseOtherTabs", false);
user_pref("browser.tabs.warnOnOpen", false);
user_pref("full-screen-api.warning.delay", 0);
user_pref("full-screen-api.warning.timeout", 0);
user_pref("browser.download.autohideButton", true);
user_pref("toolkit.cosmeticAnimations.enabled", false);
user_pref("ui.key.menuAccessKey", 0);
user_pref("browser.messaging-system.whatsNewPanel.enabled", false);
user_pref("browser.bookmarks.max_backups", 2);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("xpinstall.signatures.required", false);

// Disable telemetry
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.newtabpage.activity-stream.asrouter.providers.snippets", "");
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.feeds.discoverystreamfeed", false);
user_pref("geo.provider.network.url", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%");
user_pref("browser.search.geoSpecificDefaults", false);
user_pref("browser.search.geoSpecificDefaults.url", "");
user_pref("dom.ipc.plugins.flash.subprocess.crashreporter.enabled", false);
user_pref("dom.ipc.plugins.reportCrashURL", false);
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
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");
user_pref("extensions.systemAddon.update.enabled", false);
user_pref("extensions.systemAddon.update.url", "");
user_pref("browser.ping-centre.telemetry", false);
user_pref("extensions.screenshots.upload-disabled", true);
user_pref("extensions.webcompat-reporter.enabled", false);
user_pref("security.ssl.errorReporting.automatic", false);
user_pref("security.ssl.errorReporting.enabled", false);
user_pref("security.ssl.errorReporting.url", "");
user_pref("dom.push.enabled", false);
user_pref("dom.push.userAgentID", "");
user_pref("extensions.webextensions.restrictedDomains", "");
user_pref("extensions.pocket.enabled", false);
user_pref("identity.fxaccounts.enabled", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);
user_pref("network.manage-offline-status", false);

// Various privacy improvements
user_pref("browser.privatebrowsing.autostart", true);
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.available", "off");
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.heuristics.enabled", false);
user_pref("browser.send_pings", false);
user_pref("browser.send_pings.require_same_host", true);
user_pref("network.proxy.socks_remote_dns", true);
user_pref("layout.css.visited_links_enabled", false);
user_pref("signon.rememberSignons", false);
user_pref("signon.autofillForms", false);
user_pref("network.auth.subresource-http-auth-allow", 1);
user_pref("permissions.memory_only", true);
user_pref("browser.privatebrowsing.forceMediaMemoryCache", false);
user_pref("media.memory_cache_max_size", 16384);
user_pref("gfx.font_rendering.graphite.enabled", false);
user_pref("network.http.sendRefererHeader", 1);
user_pref("network.http.referer.XOriginPolicy", 1); // Can break some login pages
user_pref("network.http.referer.hideOnionSource", true);
user_pref("privacy.donottrackheader.enabled", true);
user_pref("plugin.state.flash", 0);
user_pref("media.gmp-provider.enabled", false);
user_pref("media.gmp-widevinecdm.visible", false); // Disables DRM
user_pref("media.gmp-widevinecdm.enabled", false); // Disables DRM
user_pref("media.eme.enabled", false);             // Disables DRM
user_pref("media.peerconnection.ice.default_address_only", true);
user_pref("media.peerconnection.ice.no_host", true);
user_pref("media.peerconnection.ice.proxy_only_if_behind_proxy", true);
user_pref("webgl.min_capability_mode", true);
user_pref("webgl.disable-fail-if-major-performance-caveat", true);
user_pref("dom.event.clipboardevents.enabled", false); // Can break copy/paste on some online text editors
user_pref("accessibility.force_disabled", 1)
user_pref("beacon.enabled", false);
user_pref("devtools.debugger.remote-enabled", false);
user_pref("permissions.manager.defaultsUrl", "");
user_pref("webchannel.allowObject.urlWhitelist", "");
user_pref("network.IDN_show_punycode", true);
user_pref("browser.display.use_system_colors", false);
user_pref("permissions.delegation.enabled", false);
user_pref("network.cookie.thirdparty.nonsecureSessionOnly", true);
user_pref("privacy.firstparty.isolate", true); // Can break some login pages
user_pref("privacy.resistFingerprinting", true);
user_pref("privacy.resistFingerprinting.block_mozAddonManager", true);
//user_pref("privacy.resistFingerprinting.letterboxing", true); // Looks ugly af

// Privacy improvements that impact performance
//user_pref("network.prefetch-next", false);
//user_pref("network.dns.disablePrefetch", true);
//user_pref("network.dns.disablePrefetchFromHTTPS", true);
//user_pref("network.predictor.enabled", false);
//user_pref("network.predictor.enable-prefetch", false);
//user_pref("network.http.speculative-parallel-limit", 0);
//user_pref("browser.urlbar.speculativeConnect.enabled", false);
user_pref("browser.cache.disk.enable", false);
//user_pref("media.peerconnection.enabled", false);
//user_pref("webgl.disabled", true);
//user_pref("webgl.enable-webgl2", false);
//user_pref("javascript.options.asmjs", false);
//user_pref("javascript.options.ion", false);
//user_pref("javascript.options.baselinejit", false);
//user_pref("javascript.options.jit_trustedprincipals", true);
//user_pref("javascript.options.wasm", false);
//user_pref("layers.acceleration.disabled", true);
user_pref("browser.cache.offline.enable", false);

// TLS hardening
user_pref("security.ssl.require_safe_negotiation", true);
user_pref("security.tls.version.enable-deprecated", false);
user_pref("security.ssl.disable_session_identifiers", true);
user_pref("security.tls.enable_0rtt_data", false);
user_pref("security.ssl.enable_ocsp_stapling", true);
user_pref("security.OCSP.enabled", 1);
user_pref("security.OCSP.require", true);
user_pref("security.pki.sha1_enforcement_level", 1);
user_pref("security.cert_pinning.enforcement_level", 2);
user_pref("security.mixed_content.block_active_content", true);
user_pref("security.mixed_content.block_display_content", true);
user_pref("security.mixed_content.block_object_subrequest", true);
user_pref("dom.security.https_only_mode", true);
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
user_pref("browser.xul.error_pages.expert_bad_cert", true);
user_pref("security.insecure_connection_icon.enabled", true);
user_pref("security.insecure_connection_text.enabled", true);

// TLS hardening that can be fingerprinted
user_pref("security.tls.version.min", 3);
user_pref("security.ssl3.rsa_des_ede3_sha", false);
user_pref("security.ssl3.ecdhe_ecdsa_aes_128_sha", false);
user_pref("security.ssl3.ecdhe_rsa_aes_128_sha", false);
user_pref("security.ssl3.dhe_rsa_aes_128_sha", false);
user_pref("security.ssl3.dhe_rsa_aes_256_sha", false);
user_pref("security.ssl3.rsa_aes_128_sha", false);
user_pref("security.ssl3.rsa_aes_256_sha", false);
