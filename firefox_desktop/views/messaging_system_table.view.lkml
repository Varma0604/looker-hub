
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: messaging_system_table {
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

  dimension: metrics__counter__messaging_system_event_context_parse_error {
    sql: ${TABLE}.metrics.counter.messaging_system_event_context_parse_error ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Messaging System Event Context Parse Error"
    description: "How often we failed to parse event_context as JSON.
"
  }

  dimension: metrics__counter__messaging_system_unknown_key_count {
    sql: ${TABLE}.metrics.counter.messaging_system_unknown_key_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Messaging System Unknown Key Count"
    description: "The sum of all unknown keys counted.
Useful for testing.
Can be removed after bug 1600008 is resolved.
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

  dimension: metrics__labeled_counter__messaging_system_attribution_unknown_keys {
    sql: ${TABLE}.metrics.labeled_counter.messaging_system_attribution_unknown_keys ;;
    hidden: yes
    description: "Attribution keys supplied to the messaging system for which
we did not have a corresponding metric, and the count of how
often that happened.
Either add this key to a list of known attribution keys in
`AboutWelcomeTelemetry` to suppress or define an appropriate metric in
`browser/components/newtab/metrics.yaml` to collect.
"
  }

  dimension: metrics__labeled_counter__messaging_system_invalid_nested_data {
    sql: ${TABLE}.metrics.labeled_counter.messaging_system_invalid_nested_data ;;
    hidden: yes
    description: "We received a ping with non-scalar data on a field of this name.
If this is existing pre-PingCentre-replacement data, you may need to
augment the logic in
`AboutWelcome.submitGleanPingForPing` like the other `handledKeys`.
If this is for new, post-PingCentre-replacement data, you should
probably prefer a flat structure.
If you're unsure, please ask in
[the #glean channel](https://chat.mozilla.org/#/room/#glean:mozilla.org).
"
  }

  dimension: metrics__labeled_counter__messaging_system_unknown_keys {
    sql: ${TABLE}.metrics.labeled_counter.messaging_system_unknown_keys ;;
    hidden: yes
    description: "Ping keys supplied to the messaging system for which
we did not have a corresponding metric mapped to how often they attempted
to be recorded.
You may have forgotten to define an appropriate metric in
`browser/components/newtab/metrics.yaml`.
"
  }

  dimension: metrics__string__glean_client_annotation_experimentation_id {
    sql: ${TABLE}.metrics.string.glean_client_annotation_experimentation_id ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Glean Client Annotation Experimentation Id"
    description: "An experimentation identifier derived and provided by the application
for the purpose of experimenation enrollment.
"
  }

  dimension: metrics__string__messaging_system_action {
    sql: ${TABLE}.metrics.string.messaging_system_action ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Action"
    description: "What type of action resulted in the event. One of \"IMPRESSION\" or \"DISMISS\".
"
  }

  dimension: metrics__string__messaging_system_addon_version {
    sql: ${TABLE}.metrics.string.messaging_system_addon_version ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Addon Version"
    description: "Used to hold the system addon's version, now is almost certainly an echo of the app's build id.
"
  }

  dimension: metrics__string__messaging_system_attribution_campaign {
    sql: ${TABLE}.metrics.string.messaging_system_attribution_campaign ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Attribution Campaign"
    description: "Attribution's campaign, possibly derived from the utm parameter of the
same name.
"
  }

  dimension: metrics__string__messaging_system_attribution_content {
    sql: ${TABLE}.metrics.string.messaging_system_attribution_content ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Attribution Content"
    description: "Attribution's content, possibly derived from the utm parameter of the
same name.
"
  }

  dimension: metrics__string__messaging_system_attribution_dlsource {
    sql: ${TABLE}.metrics.string.messaging_system_attribution_dlsource ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Attribution Dlsource"
    description: "Mozilla-specific download \"source\" name. Could be something like
\"mozillaci\" to identify that the installer came from
`{archive|ftp}.mozilla.org`.
"
  }

  dimension: metrics__string__messaging_system_attribution_dltoken {
    sql: ${TABLE}.metrics.string.messaging_system_attribution_dltoken ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Attribution Dltoken"
    description: "String representation of the dltoken identifying the particular
installer used to install this Firefox.
Likely a UUID, if present.
"
  }

  dimension: metrics__string__messaging_system_attribution_experiment {
    sql: ${TABLE}.metrics.string.messaging_system_attribution_experiment ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Attribution Experiment"
    description: "Attribution's experiment key.
"
  }

  dimension: metrics__string__messaging_system_attribution_medium {
    sql: ${TABLE}.metrics.string.messaging_system_attribution_medium ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Attribution Medium"
    description: "Attribution's medium, possibly derived from the utm parameter of the same
name.
"
  }

  dimension: metrics__string__messaging_system_attribution_msstoresignedin {
    sql: ${TABLE}.metrics.string.messaging_system_attribution_msstoresignedin ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Attribution Msstoresignedin"
    description: "Either the string \"true\" or the string \"false\" to indicate whether the
attributed install came from the Microsoft store and, if so, whether the
user was signed in at the time.
"
  }

  dimension: metrics__string__messaging_system_attribution_source {
    sql: ${TABLE}.metrics.string.messaging_system_attribution_source ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Attribution Source"
    description: "Attribution's source, possibly derived from the utm parameter of the same
name.
"
  }

  dimension: metrics__string__messaging_system_attribution_ua {
    sql: ${TABLE}.metrics.string.messaging_system_attribution_ua ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Attribution Ua"
    description: "Attribution's ua key.
"
  }

  dimension: metrics__string__messaging_system_attribution_variation {
    sql: ${TABLE}.metrics.string.messaging_system_attribution_variation ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Attribution Variation"
    description: "Attribution's variation key.
"
  }

  dimension: metrics__string__messaging_system_bucket_id {
    sql: ${TABLE}.metrics.string.messaging_system_bucket_id ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Bucket Id"
    description: "A name shared between multiple messages that may individually be too targetted. e.g. a message that gets shown on specific websites or a message asking about personal information.
"
  }

  dimension: metrics__string__messaging_system_event {
    sql: ${TABLE}.metrics.string.messaging_system_event ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Event"
    description: "The type of event. Any user defined string (e.g. “click”, “share”, “delete”, “more_items”)
"
  }

  dimension: metrics__string__messaging_system_event_page {
    sql: ${TABLE}.metrics.string.messaging_system_event_page ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Event Page"
    description: "The event_context's `page`. Almost always \"about:welcome\".
"
  }

  dimension: metrics__string__messaging_system_event_reason {
    sql: ${TABLE}.metrics.string.messaging_system_event_reason ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Event Reason"
    description: "The event_context's `reason`. Likely something like
\"welcome-window-closed\" or \"app-shut-down\",.
"
  }

  dimension: metrics__string__messaging_system_event_source {
    sql: ${TABLE}.metrics.string.messaging_system_event_source ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Event Source"
    description: "The event_context's `source`. Likely something like \"primary_button\".
"
  }

  dimension: metrics__string__messaging_system_locale {
    sql: ${TABLE}.metrics.string.messaging_system_locale ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Locale"
    description: "The locale as supplied to the messaging system by `Services.locale.appLocaleAsBCP47`.
"
  }

  dimension: metrics__string__messaging_system_page {
    sql: ${TABLE}.metrics.string.messaging_system_page ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Page"
    description: "One of [”about:newtab”, “about:home”, “about:welcome”, “unknown” (which either means not-applicable or is a bug)].
"
  }

  dimension: metrics__string__messaging_system_ping_type {
    sql: ${TABLE}.metrics.string.messaging_system_ping_type ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Ping Type"
    description: "Type of event the ping is capturing. e.g. \"cfr\", \"whats-new-panel\", \"onboarding\"
"
  }

  dimension: metrics__string__messaging_system_source {
    sql: ${TABLE}.metrics.string.messaging_system_source ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Messaging System Source"
    description: "The source of the interaction described by the other metrics. e.g. \"frecent_links\", \"newtab\", \"CFR\"
"
  }

  dimension: metrics__text__messaging_system_cfr_action {
    sql: ${TABLE}.metrics.text.messaging_system_cfr_action ;;
    type: string
    group_label: "Metrics Text"
    group_item_label: "Messaging System Cfr Action"
  }

  dimension: metrics__text__messaging_system_event_context {
    sql: ${TABLE}.metrics.text.messaging_system_event_context ;;
    type: string
    group_label: "Metrics Text"
    group_item_label: "Messaging System Event Context"
  }

  dimension: metrics__text__messaging_system_message_id {
    sql: ${TABLE}.metrics.text.messaging_system_message_id ;;
    type: string
    group_label: "Metrics Text"
    group_item_label: "Messaging System Message Id"
  }

  dimension: metrics__text2__messaging_system_cfr_action {
    sql: ${TABLE}.metrics.text2.messaging_system_cfr_action ;;
    type: string
    group_label: "Metrics Text2"
    group_item_label: "Messaging System Cfr Action"
    description: "The Contextual Feature Recommender's action.
"
  }

  dimension: metrics__text2__messaging_system_event_context {
    sql: ${TABLE}.metrics.text2.messaging_system_event_context ;;
    type: string
    group_label: "Metrics Text2"
    group_item_label: "Messaging System Event Context"
    description: "The stringified JSON of `event_context`.
"
  }

  dimension: metrics__text2__messaging_system_message_id {
    sql: ${TABLE}.metrics.text2.messaging_system_message_id ;;
    type: string
    group_label: "Metrics Text2"
    group_item_label: "Messaging System Message Id"
    description: "A string identifier of the message in Activity Stream Router.
"
  }

  dimension: metrics__uuid__messaging_system_browser_session_id {
    sql: ${TABLE}.metrics.uuid.messaging_system_browser_session_id ;;
    type: string
    group_label: "Metrics Uuid"
    group_item_label: "Messaging System Browser Session Id"
    description: "The Legacy Telemetry browser \"session id\". Identifies a specific period from application start to shutdown. See [the \"main\" ping docs](https://firefox-source-docs.mozilla.org/toolkit/components/telemetry/data/main-ping.html) for details.
"
  }

  dimension: metrics__uuid__messaging_system_client_id {
    sql: ${TABLE}.metrics.uuid.messaging_system_client_id ;;
    type: string
    group_label: "Metrics Uuid"
    group_item_label: "Messaging System Client Id"
    description: "The client_id according to Telemetry.
Might not always have a value due to policy around specific types of
ping being sent. Value may be the canary client id
`c0ffeec0-ffee-c0ff-eec0-ffeec0ffeec0`
in pings near when the data upload pref is disabled (if Telemetry gets
to go first), or between when a client_id has been removed and when it
has been regenerated.
Present only in some circumstances (see
[bug 1484035]https://bugzilla.mozilla.org/show_bug.cgi?id=1484035)).
"
  }

  dimension: metrics__uuid__messaging_system_impression_id {
    sql: ${TABLE}.metrics.uuid.messaging_system_impression_id ;;
    type: string
    group_label: "Metrics Uuid"
    group_item_label: "Messaging System Impression Id"
    description: "The unique impression identifier for a specific client.
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

  sql_table_name: `mozdata.firefox_desktop.messaging_system` ;;
}

view: messaging_system_table__events {
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

view: messaging_system_table__events__extra {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: string
  }
}

view: messaging_system_table__ping_info__experiments {
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