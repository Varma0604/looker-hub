
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: broken_site_report_table {
  dimension: additional_properties {
    sql: ${TABLE}.additional_properties ;;
    hidden: yes
    description: "A JSON string containing any payload properties not present in the schema"
  }

  dimension: client_info__android_sdk_version {
    sql: ${TABLE}.client_info.android_sdk_version ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Android Sdk Version"
    description: "The optional Android specific SDK version of the software running on this hardware device."
  }

  dimension: client_info__app_build {
    sql: ${TABLE}.client_info.app_build ;;
    type: string
    group_label: "Client Info"
    group_item_label: "App Build"
    description: "The build identifier generated by the CI system (e.g. \"1234/A\"). For language bindings that provide automatic detection for this value, (e.g. Android/Kotlin), in the unlikely event that the build identifier can not be retrieved from the OS, it is set to \"inaccessible\". For other language bindings, if the value was not provided through configuration, this metric gets set to `Unknown`."
  }

  dimension: client_info__app_channel {
    sql: ${TABLE}.client_info.app_channel ;;
    type: string
    group_label: "Client Info"
    group_item_label: "App Channel"
    description: "The channel the application is being distributed on."
  }

  dimension: client_info__app_display_version {
    sql: ${TABLE}.client_info.app_display_version ;;
    type: string
    group_label: "Client Info"
    group_item_label: "App Display Version"
    description: "The user visible version string (e.g. \"1.0.3\").  In the unlikely event that the display version can not be retrieved, it is set to \"inaccessible\"."
  }

  dimension: client_info__architecture {
    sql: ${TABLE}.client_info.architecture ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Architecture"
    description: "The architecture of the device, (e.g. \"arm\", \"x86\")."
  }

  dimension: client_info__build_date {
    sql: ${TABLE}.client_info.build_date ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Build Date"
    description: "The date & time the application was built"
  }

  dimension: client_info__client_id {
    sql: ${TABLE}.client_info.client_id ;;
    hidden: yes
    description: "A UUID uniquely identifying the client."
  }

  dimension: client_info__device_manufacturer {
    sql: ${TABLE}.client_info.device_manufacturer ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Device Manufacturer"
    description: "The manufacturer of the device the application is running on. Not set if the device manufacturer can't be determined (e.g. on Desktop)."
  }

  dimension: client_info__device_model {
    sql: ${TABLE}.client_info.device_model ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Device Model"
    description: "The model of the device the application is running on. On Android, this is Build.MODEL, the user-visible marketing name, like \"Pixel 2 XL\". Not set if the device model can't be determined (e.g. on Desktop)."
  }

  dimension: client_info__first_run_date {
    sql: ${TABLE}.client_info.first_run_date ;;
    type: string
    group_label: "Client Info"
    group_item_label: "First Run Date"
    description: "The date of the first run of the application."
  }

  dimension: client_info__locale {
    sql: ${TABLE}.client_info.locale ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Locale"
    description: "The locale of the application during initialization (e.g. \"es-ES\"). If the locale can't be determined on the system, the value is [\"und\"](https://unicode.org/reports/tr35/#Unknown_or_Invalid_Identifiers), to indicate \"undetermined\"."
  }

  dimension: client_info__os {
    sql: ${TABLE}.client_info.os ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Os"
    description: "The name of the operating system. Possible values: Android, iOS, Linux, Darwin, Windows, FreeBSD, NetBSD, OpenBSD, Solaris, unknown"
  }

  dimension: client_info__os_version {
    sql: ${TABLE}.client_info.os_version ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Os Version"
    description: "The user-visible version of the operating system (e.g. \"1.2.3\"). If the version detection fails, this metric gets set to `Unknown`."
  }

  dimension: client_info__session_count {
    sql: ${TABLE}.client_info.session_count ;;
    type: number
    group_label: "Client Info"
    group_item_label: "Session Count"
    description: "An optional running counter of the number of sessions for a client."
  }

  dimension: client_info__session_id {
    sql: ${TABLE}.client_info.session_id ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Session Id"
    description: "An optional UUID uniquely identifying the client's current session."
  }

  dimension: client_info__telemetry_sdk_build {
    sql: ${TABLE}.client_info.telemetry_sdk_build ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Telemetry Sdk Build"
    description: "The version of the Glean SDK"
  }

  dimension: client_info__windows_build_number {
    sql: ${TABLE}.client_info.windows_build_number ;;
    type: number
    group_label: "Client Info"
    group_item_label: "Windows Build Number"
    description: "The optional Windows build number, reported by Windows (e.g. 22000) and not set for other platforms"
  }

  dimension: document_id {
    sql: ${TABLE}.document_id ;;
    hidden: yes
    description: "The document ID specified in the URI when the client sent this message"
  }

  dimension: events {
    sql: ${TABLE}.events ;;
    hidden: yes
  }

  dimension: metadata__geo__city {
    sql: ${TABLE}.metadata.geo.city ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "City"
  }

  dimension: metadata__geo__country {
    sql: ${TABLE}.metadata.geo.country ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "Country"
    map_layer_name: countries
    description: "An ISO 3166-1 alpha-2 country code"
  }

  dimension: metadata__geo__db_version {
    sql: ${TABLE}.metadata.geo.db_version ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "Db Version"
    description: "The specific geo database version used for this lookup"
  }

  dimension: metadata__geo__subdivision1 {
    sql: ${TABLE}.metadata.geo.subdivision1 ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "Subdivision1"
    description: "First major country subdivision, typically a state, province, or county"
  }

  dimension: metadata__geo__subdivision2 {
    sql: ${TABLE}.metadata.geo.subdivision2 ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "Subdivision2"
    description: "Second major country subdivision; not applicable for most countries"
  }

  dimension: metadata__header__date {
    sql: ${TABLE}.metadata.header.date ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "Date"
    description: "Date HTTP header"
  }

  dimension: metadata__header__dnt {
    sql: ${TABLE}.metadata.header.dnt ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "Dnt"
    description: "DNT (Do Not Track) HTTP header"
  }

  dimension: metadata__header__parsed_x_lb_tags__tls_cipher_hex {
    sql: ${TABLE}.metadata.header.parsed_x_lb_tags.tls_cipher_hex ;;
    type: string
    group_label: "Metadata Header Parsed X Lb Tags"
    group_item_label: "Tls Cipher Hex"
  }

  dimension: metadata__header__parsed_x_lb_tags__tls_version {
    sql: ${TABLE}.metadata.header.parsed_x_lb_tags.tls_version ;;
    type: string
    group_label: "Metadata Header Parsed X Lb Tags"
    group_item_label: "Tls Version"
  }

  dimension: metadata__header__parsed_x_source_tags {
    sql: ${TABLE}.metadata.header.parsed_x_source_tags ;;
    hidden: yes
  }

  dimension: metadata__header__x_debug_id {
    sql: ${TABLE}.metadata.header.x_debug_id ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Debug Id"
    description: "X-Debug-Id HTTP header"
  }

  dimension: metadata__header__x_foxsec_ip_reputation {
    sql: ${TABLE}.metadata.header.x_foxsec_ip_reputation ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Foxsec Ip Reputation"
    description: "X-Foxsec-IP-Reputation header"
  }

  dimension: metadata__header__x_lb_tags {
    sql: ${TABLE}.metadata.header.x_lb_tags ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Lb Tags"
    description: "X-LB-Tags HTTP header"
  }

  dimension: metadata__header__x_pingsender_version {
    sql: ${TABLE}.metadata.header.x_pingsender_version ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Pingsender Version"
    description: "X-PingSender-Version HTTP header"
  }

  dimension: metadata__header__x_source_tags {
    sql: ${TABLE}.metadata.header.x_source_tags ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Source Tags"
    description: "X-Source-Tags HTTP header"
  }

  dimension: metadata__header__x_telemetry_agent {
    sql: ${TABLE}.metadata.header.x_telemetry_agent ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Telemetry Agent"
    description: "X-Telemetry-Agent HTTP header"
  }

  dimension: metadata__isp__db_version {
    sql: ${TABLE}.metadata.isp.db_version ;;
    type: string
    group_label: "Metadata Isp"
    group_item_label: "Db Version"
    description: "The specific geo ISP database version used for this lookup"
  }

  dimension: metadata__isp__name {
    sql: ${TABLE}.metadata.isp.name ;;
    type: string
    group_label: "Metadata Isp"
    group_item_label: "Name"
    description: "The name of the ISP associated with the client's IP address"
  }

  dimension: metadata__isp__organization {
    sql: ${TABLE}.metadata.isp.organization ;;
    type: string
    group_label: "Metadata Isp"
    group_item_label: "Organization"
    description: "The name of a specific business entity associated with the client's IP address when available; otherwise the ISP name"
  }

  dimension: metadata__user_agent__browser {
    sql: ${TABLE}.metadata.user_agent.browser ;;
    type: string
    group_label: "Metadata User Agent"
    group_item_label: "Browser"
  }

  dimension: metadata__user_agent__os {
    sql: ${TABLE}.metadata.user_agent.os ;;
    type: string
    group_label: "Metadata User Agent"
    group_item_label: "Os"
  }

  dimension: metadata__user_agent__version {
    sql: ${TABLE}.metadata.user_agent.version ;;
    type: string
    group_label: "Metadata User Agent"
    group_item_label: "Version"
  }

  dimension: metrics__boolean__broken_site_report_browser_info_app_fission_enabled {
    sql: ${TABLE}.metrics.boolean.broken_site_report_browser_info_app_fission_enabled ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Browser Info App Fission Enabled"
    description: "Whether Fission is enabled
"
  }

  dimension: metrics__boolean__broken_site_report_browser_info_graphics_has_touch_screen {
    sql: ${TABLE}.metrics.boolean.broken_site_report_browser_info_graphics_has_touch_screen ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Browser Info Graphics Has Touch Screen"
    description: "Whether a touch screen was detected
"
  }

  dimension: metrics__boolean__broken_site_report_browser_info_prefs_forced_accelerated_layers {
    sql: ${TABLE}.metrics.boolean.broken_site_report_browser_info_prefs_forced_accelerated_layers ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Browser Info Prefs Forced Accelerated Layers"
    description: "Value of `layers.acceleration_force.enabled`
"
  }

  dimension: metrics__boolean__broken_site_report_browser_info_prefs_global_privacy_control_enabled {
    sql: ${TABLE}.metrics.boolean.broken_site_report_browser_info_prefs_global_privacy_control_enabled ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Browser Info Prefs Global Privacy Control Enabled"
    description: "Value of `privacy.globalprivacycontrol.enabled`
"
  }

  dimension: metrics__boolean__broken_site_report_browser_info_prefs_installtrigger_enabled {
    sql: ${TABLE}.metrics.boolean.broken_site_report_browser_info_prefs_installtrigger_enabled ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Browser Info Prefs Installtrigger Enabled"
    description: "Value of `extensions.InstallTrigger.enabled`
"
  }

  dimension: metrics__boolean__broken_site_report_browser_info_prefs_opaque_response_blocking {
    sql: ${TABLE}.metrics.boolean.broken_site_report_browser_info_prefs_opaque_response_blocking ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Browser Info Prefs Opaque Response Blocking"
    description: "Value of `browser.opaqueResponseBlocking`
"
  }

  dimension: metrics__boolean__broken_site_report_browser_info_prefs_resist_fingerprinting_enabled {
    sql: ${TABLE}.metrics.boolean.broken_site_report_browser_info_prefs_resist_fingerprinting_enabled ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Browser Info Prefs Resist Fingerprinting Enabled"
    description: "Value of `privacy.resistFingerprinting`
"
  }

  dimension: metrics__boolean__broken_site_report_browser_info_prefs_software_webrender {
    sql: ${TABLE}.metrics.boolean.broken_site_report_browser_info_prefs_software_webrender ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Browser Info Prefs Software Webrender"
    description: "Value of `gfx.webrender.software`
"
  }

  dimension: metrics__boolean__broken_site_report_browser_info_system_is_tablet {
    sql: ${TABLE}.metrics.boolean.broken_site_report_browser_info_system_is_tablet ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Browser Info System Is Tablet"
    description: "Whether the device is a tablet
"
  }

  dimension: metrics__boolean__broken_site_report_tab_info_antitracking_has_mixed_active_content_blocked {
    sql: ${TABLE}.metrics.boolean.broken_site_report_tab_info_antitracking_has_mixed_active_content_blocked ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Tab Info Antitracking Has Mixed Active Content Blocked"
    description: "Whether the reported tab has any blocked mixed active content
"
  }

  dimension: metrics__boolean__broken_site_report_tab_info_antitracking_has_mixed_display_content_blocked {
    sql: ${TABLE}.metrics.boolean.broken_site_report_tab_info_antitracking_has_mixed_display_content_blocked ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Tab Info Antitracking Has Mixed Display Content Blocked"
    description: "Whether the reported tab has any blocked mixed display content
"
  }

  dimension: metrics__boolean__broken_site_report_tab_info_antitracking_has_tracking_content_blocked {
    sql: ${TABLE}.metrics.boolean.broken_site_report_tab_info_antitracking_has_tracking_content_blocked ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Tab Info Antitracking Has Tracking Content Blocked"
    description: "Whether the reported tab has any blocked tracking content
"
  }

  dimension: metrics__boolean__broken_site_report_tab_info_antitracking_is_private_browsing {
    sql: ${TABLE}.metrics.boolean.broken_site_report_tab_info_antitracking_is_private_browsing ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Tab Info Antitracking Is Private Browsing"
    description: "Whether the tab the user was on when reporting is in private browsing mode
"
  }

  dimension: metrics__boolean__broken_site_report_tab_info_frameworks_fastclick {
    sql: ${TABLE}.metrics.boolean.broken_site_report_tab_info_frameworks_fastclick ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Tab Info Frameworks Fastclick"
    description: "Whether the FastClick web library was detected on the original tab.
"
  }

  dimension: metrics__boolean__broken_site_report_tab_info_frameworks_marfeel {
    sql: ${TABLE}.metrics.boolean.broken_site_report_tab_info_frameworks_marfeel ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Tab Info Frameworks Marfeel"
    description: "Whether the Marfeel web framework was detected on the original tab.
"
  }

  dimension: metrics__boolean__broken_site_report_tab_info_frameworks_mobify {
    sql: ${TABLE}.metrics.boolean.broken_site_report_tab_info_frameworks_mobify ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Broken Site Report Tab Info Frameworks Mobify"
    description: "Whether the Mobify web framework was detected on the original tab.
"
  }

  dimension: metrics__labeled_counter__glean_error_invalid_label {
    sql: ${TABLE}.metrics.labeled_counter.glean_error_invalid_label ;;
    hidden: yes
    description: "Counts the number of times a metric was set with an invalid label.
The labels are the `category.name` identifier of the metric.
"
  }

  dimension: metrics__labeled_counter__glean_error_invalid_overflow {
    sql: ${TABLE}.metrics.labeled_counter.glean_error_invalid_overflow ;;
    hidden: yes
    description: "Counts the number of times a metric was set a value that overflowed.
The labels are the `category.name` identifier of the metric.
"
  }

  dimension: metrics__labeled_counter__glean_error_invalid_state {
    sql: ${TABLE}.metrics.labeled_counter.glean_error_invalid_state ;;
    hidden: yes
    description: "Counts the number of times a timing metric was used incorrectly.
The labels are the `category.name` identifier of the metric.
"
  }

  dimension: metrics__labeled_counter__glean_error_invalid_value {
    sql: ${TABLE}.metrics.labeled_counter.glean_error_invalid_value ;;
    hidden: yes
    description: "Counts the number of times a metric was set to an invalid value.
The labels are the `category.name` identifier of the metric.
"
  }

  dimension: metrics__quantity__broken_site_report_browser_info_prefs_cookie_behavior {
    sql: ${TABLE}.metrics.quantity.broken_site_report_browser_info_prefs_cookie_behavior ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Broken Site Report Browser Info Prefs Cookie Behavior"
    description: "Value of `network.cookie.cookieBehavior`
"
  }

  dimension: metrics__quantity__broken_site_report_browser_info_system_memory {
    sql: ${TABLE}.metrics.quantity.broken_site_report_browser_info_system_memory ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Broken Site Report Browser Info System Memory"
    description: "How many mb of RAM is reported for the system
"
  }

  dimension: metrics__string__broken_site_report_breakage_category {
    sql: ${TABLE}.metrics.string.broken_site_report_breakage_category ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Broken Site Report Breakage Category"
    description: "An optional select-box choice (options may eventually change)
"
  }

  dimension: metrics__string__broken_site_report_browser_info_graphics_device_pixel_ratio {
    sql: ${TABLE}.metrics.string.broken_site_report_browser_info_graphics_device_pixel_ratio ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Broken Site Report Browser Info Graphics Device Pixel Ratio"
    description: "A decimal number
"
  }

  dimension: metrics__string__broken_site_report_tab_info_antitracking_block_list {
    sql: ${TABLE}.metrics.string.broken_site_report_tab_info_antitracking_block_list ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Broken Site Report Tab Info Antitracking Block List"
    description: "Currently either `basic` or `strict`, may change in the future.
"
  }

  dimension: metrics__string__glean_client_annotation_experimentation_id {
    sql: ${TABLE}.metrics.string.glean_client_annotation_experimentation_id ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Glean Client Annotation Experimentation Id"
    description: "An experimentation identifier derived and provided by the application
for the purpose of experimentation enrollment.
"
  }

  dimension: metrics__string_list__broken_site_report_browser_info_app_default_locales {
    sql: ${TABLE}.metrics.string_list.broken_site_report_browser_info_app_default_locales ;;
    hidden: yes
  }

  dimension: metrics__string_list__broken_site_report_browser_info_security_antispyware {
    sql: ${TABLE}.metrics.string_list.broken_site_report_browser_info_security_antispyware ;;
    hidden: yes
  }

  dimension: metrics__string_list__broken_site_report_browser_info_security_antivirus {
    sql: ${TABLE}.metrics.string_list.broken_site_report_browser_info_security_antivirus ;;
    hidden: yes
  }

  dimension: metrics__string_list__broken_site_report_browser_info_security_firewall {
    sql: ${TABLE}.metrics.string_list.broken_site_report_browser_info_security_firewall ;;
    hidden: yes
  }

  dimension: metrics__string_list__broken_site_report_tab_info_languages {
    sql: ${TABLE}.metrics.string_list.broken_site_report_tab_info_languages ;;
    hidden: yes
  }

  dimension: metrics__text__broken_site_report_browser_info_app_default_useragent_string {
    sql: ${TABLE}.metrics.text.broken_site_report_browser_info_app_default_useragent_string ;;
    type: string
    group_label: "Metrics Text"
    group_item_label: "Broken Site Report Browser Info App Default Useragent String"
  }

  dimension: metrics__text__broken_site_report_browser_info_graphics_devices_json {
    sql: ${TABLE}.metrics.text.broken_site_report_browser_info_graphics_devices_json ;;
    type: string
    group_label: "Metrics Text"
    group_item_label: "Broken Site Report Browser Info Graphics Devices Json"
  }

  dimension: metrics__text__broken_site_report_browser_info_graphics_drivers_json {
    sql: ${TABLE}.metrics.text.broken_site_report_browser_info_graphics_drivers_json ;;
    type: string
    group_label: "Metrics Text"
    group_item_label: "Broken Site Report Browser Info Graphics Drivers Json"
  }

  dimension: metrics__text__broken_site_report_browser_info_graphics_features_json {
    sql: ${TABLE}.metrics.text.broken_site_report_browser_info_graphics_features_json ;;
    type: string
    group_label: "Metrics Text"
    group_item_label: "Broken Site Report Browser Info Graphics Features Json"
  }

  dimension: metrics__text__broken_site_report_browser_info_graphics_monitors_json {
    sql: ${TABLE}.metrics.text.broken_site_report_browser_info_graphics_monitors_json ;;
    type: string
    group_label: "Metrics Text"
    group_item_label: "Broken Site Report Browser Info Graphics Monitors Json"
  }

  dimension: metrics__text__broken_site_report_description {
    sql: ${TABLE}.metrics.text.broken_site_report_description ;;
    type: string
    group_label: "Metrics Text"
    group_item_label: "Broken Site Report Description"
  }

  dimension: metrics__text__broken_site_report_tab_info_useragent_string {
    sql: ${TABLE}.metrics.text.broken_site_report_tab_info_useragent_string ;;
    type: string
    group_label: "Metrics Text"
    group_item_label: "Broken Site Report Tab Info Useragent String"
  }

  dimension: metrics__text2__broken_site_report_browser_info_app_default_useragent_string {
    sql: ${TABLE}.metrics.text2.broken_site_report_browser_info_app_default_useragent_string ;;
    type: string
    group_label: "Metrics Text2"
    group_item_label: "Broken Site Report Browser Info App Default Useragent String"
    description: "The default user-agent string of the browser
"
  }

  dimension: metrics__text2__broken_site_report_browser_info_graphics_devices_json {
    sql: ${TABLE}.metrics.text2.broken_site_report_browser_info_graphics_devices_json ;;
    type: string
    group_label: "Metrics Text2"
    group_item_label: "Broken Site Report Browser Info Graphics Devices Json"
    description: "JSON array of objects with `vendorID` and `deviceID`. For instance, `[{\"vendorID\":\"0x000\", \"deviceID\":\"0x001\"}]`
"
  }

  dimension: metrics__text2__broken_site_report_browser_info_graphics_drivers_json {
    sql: ${TABLE}.metrics.text2.broken_site_report_browser_info_graphics_drivers_json ;;
    type: string
    group_label: "Metrics Text2"
    group_item_label: "Broken Site Report Browser Info Graphics Drivers Json"
    description: "JSON array of objects with `renderer` and `version`. For instance, `[{\"renderer\":\"demo\", \"version\":\"0.2\"}]`
"
  }

  dimension: metrics__text2__broken_site_report_browser_info_graphics_features_json {
    sql: ${TABLE}.metrics.text2.broken_site_report_browser_info_graphics_features_json ;;
    type: string
    group_label: "Metrics Text2"
    group_item_label: "Broken Site Report Browser Info Graphics Features Json"
    description: "JSON object. For instance, `{\"WEBRENDER\":\"available\",\"WEBRENDER_PARTIAL\":\"disabled (User disabled via pref)\"}`
"
  }

  dimension: metrics__text2__broken_site_report_browser_info_graphics_monitors_json {
    sql: ${TABLE}.metrics.text2.broken_site_report_browser_info_graphics_monitors_json ;;
    type: string
    group_label: "Metrics Text2"
    group_item_label: "Broken Site Report Browser Info Graphics Monitors Json"
    description: "JSON array of objects with `screenWidth`, 'screenHeight`, and `scale`. For instance, `[{\"screenWidth\":3584,\"screenHeight\":2240,\"scale\":2}]`
"
  }

  dimension: metrics__text2__broken_site_report_description {
    sql: ${TABLE}.metrics.text2.broken_site_report_description ;;
    type: string
    group_label: "Metrics Text2"
    group_item_label: "Broken Site Report Description"
    description: "An optional description of the site issue the user is experiencing. May contain PII.
"
  }

  dimension: metrics__text2__broken_site_report_tab_info_useragent_string {
    sql: ${TABLE}.metrics.text2.broken_site_report_tab_info_useragent_string ;;
    type: string
    group_label: "Metrics Text2"
    group_item_label: "Broken Site Report Tab Info Useragent String"
    description: "The userAgent the site actually sees (may be overridden)
"
  }

  dimension: metrics__url__broken_site_report_url {
    sql: ${TABLE}.metrics.url.broken_site_report_url ;;
    type: string
    group_label: "Metrics Url"
    group_item_label: "Broken Site Report Url"
  }

  dimension: metrics__url2__broken_site_report_url {
    sql: ${TABLE}.metrics.url2.broken_site_report_url ;;
    type: string
    group_label: "Metrics Url2"
    group_item_label: "Broken Site Report Url"
    description: "The URL of the site being reported. May contain PII.
"
  }

  dimension: normalized_app_name {
    sql: ${TABLE}.normalized_app_name ;;
    type: string
    description: "Set to \"Other\" if this message contained an unrecognized app name"
  }

  dimension: normalized_channel {
    sql: ${TABLE}.normalized_channel ;;
    type: string
    description: "Set to \"Other\" if this message contained an unrecognized channel name"
  }

  dimension: normalized_country_code {
    sql: ${TABLE}.normalized_country_code ;;
    type: string
    description: "An ISO 3166-1 alpha-2 country code"
  }

  dimension: normalized_os {
    sql: ${TABLE}.normalized_os ;;
    type: string
    description: "Set to \"Other\" if this message contained an unrecognized OS name"
  }

  dimension: normalized_os_version {
    sql: ${TABLE}.normalized_os_version ;;
    type: string
  }

  dimension: ping_info__end_time {
    sql: ${TABLE}.ping_info.end_time ;;
    type: string
    group_label: "Ping Info"
    group_item_label: "End Time"
  }

  dimension: ping_info__experiments {
    sql: ${TABLE}.ping_info.experiments ;;
    hidden: yes
  }

  dimension: ping_info__ping_type {
    sql: ${TABLE}.ping_info.ping_type ;;
    type: string
    group_label: "Ping Info"
    group_item_label: "Ping Type"
  }

  dimension: ping_info__reason {
    sql: ${TABLE}.ping_info.reason ;;
    type: string
    group_label: "Ping Info"
    group_item_label: "Reason"
  }

  dimension: ping_info__seq {
    sql: ${TABLE}.ping_info.seq ;;
    type: number
    group_label: "Ping Info"
    group_item_label: "Seq"
  }

  dimension: ping_info__start_time {
    sql: ${TABLE}.ping_info.start_time ;;
    type: string
    group_label: "Ping Info"
    group_item_label: "Start Time"
  }

  dimension: sample_id {
    sql: ${TABLE}.sample_id ;;
    type: number
    description: "Hashed version of client_id (if present) useful for partitioning; ranges from 0 to 99"
  }

  dimension_group: metadata__header__parsed {
    sql: ${TABLE}.metadata.header.parsed_date ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Metadata Header: Parsed Date"
  }

  dimension_group: ping_info__parsed_end {
    sql: ${TABLE}.ping_info.parsed_end_time ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Ping Info: Parsed End Time"
  }

  dimension_group: ping_info__parsed_start {
    sql: ${TABLE}.ping_info.parsed_start_time ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Ping Info: Parsed Start Time"
  }

  dimension_group: submission {
    sql: ${TABLE}.submission_timestamp ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    description: "Time when the ingestion edge server accepted this message"
  }

  sql_table_name: `mozdata.firefox_desktop_background_update.broken_site_report` ;;
}

view: broken_site_report_table__events {
  dimension: category {
    sql: ${TABLE}.category ;;
    type: string
  }

  dimension: extra {
    sql: ${TABLE}.extra ;;
    hidden: yes
  }

  dimension: name {
    sql: ${TABLE}.name ;;
    type: string
  }

  dimension: timestamp {
    sql: ${TABLE}.timestamp ;;
    type: number
  }
}

view: broken_site_report_table__events__extra {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: string
  }
}

view: broken_site_report_table__ping_info__experiments {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__branch {
    sql: ${TABLE}.value.branch ;;
    type: string
    group_label: "Value"
    group_item_label: "Branch"
  }

  dimension: value__extra__enrollment_id {
    sql: ${TABLE}.value.extra.enrollment_id ;;
    type: string
    group_label: "Value Extra"
    group_item_label: "Enrollment Id"
  }

  dimension: value__extra__type {
    sql: ${TABLE}.value.extra.type ;;
    type: string
    group_label: "Value Extra"
    group_item_label: "Type"
  }
}