
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: background_update_table {
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

  dimension: metrics__boolean__background_update_exit_code_exception {
    sql: ${TABLE}.metrics.boolean.background_update_exit_code_exception ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Background Update Exit Code Exception"
    description: "True if the exit code/status of the background update task is 3, which means an exception was thrown.
"
  }

  dimension: metrics__boolean__background_update_exit_code_success {
    sql: ${TABLE}.metrics.boolean.background_update_exit_code_success ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Background Update Exit Code Success"
    description: "True if the exit code/status of the background update task is 0, which means success.
"
  }

  dimension: metrics__boolean__background_update_targeting_exception {
    sql: ${TABLE}.metrics.boolean.background_update_targeting_exception ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Background Update Targeting Exception"
    description: "True if the default profile had a targeting snapshot serialized to disk, but an exception was thrown reading it.
"
  }

  dimension: metrics__boolean__background_update_targeting_exists {
    sql: ${TABLE}.metrics.boolean.background_update_targeting_exists ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Background Update Targeting Exists"
    description: "True if the default profile had a targeting snapshot serialized to disk, and there was no exception thrown reading it.
"
  }

  dimension: metrics__boolean__update_auto_download {
    sql: ${TABLE}.metrics.boolean.update_auto_download ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Update Auto Download"
    description: "Per-installation preference \"app.update.auto\": whether to fetch and install updates without user intervention.
"
  }

  dimension: metrics__boolean__update_background_update {
    sql: ${TABLE}.metrics.boolean.update_background_update ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Update Background Update"
    description: "Per-installation preference \"app.update.background.enabled\": whether to fetch and install updates in the background when Firefox is not running.
"
  }

  dimension: metrics__boolean__update_can_usually_apply_updates {
    sql: ${TABLE}.metrics.boolean.update_can_usually_apply_updates ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Update Can Usually Apply Updates"
    description: "Whether or not the Update Service can usually download and install updates. See `canUsuallyApplyUpdates` in https://searchfox.org/mozilla-central/source/toolkit/mozapps/update/nsIUpdateService.idl.
"
  }

  dimension: metrics__boolean__update_can_usually_check_for_updates {
    sql: ${TABLE}.metrics.boolean.update_can_usually_check_for_updates ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Update Can Usually Check For Updates"
    description: "Whether or not the Update Service can usually check for updates. See `canUsuallyCheckForUpdates` in https://searchfox.org/mozilla-central/source/toolkit/mozapps/update/nsIUpdateService.idl.
"
  }

  dimension: metrics__boolean__update_can_usually_stage_updates {
    sql: ${TABLE}.metrics.boolean.update_can_usually_stage_updates ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Update Can Usually Stage Updates"
    description: "Whether the Update Service is usually able to stage updates. See `canUsuallyStageUpdates` in https://searchfox.org/mozilla-central/source/toolkit/mozapps/update/nsIUpdateService.idl.
"
  }

  dimension: metrics__boolean__update_can_usually_use_bits {
    sql: ${TABLE}.metrics.boolean.update_can_usually_use_bits ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Update Can Usually Use Bits"
    description: "On Windows, whether the Update Service can usually use BITS. See `canUsuallyUseBits` in https://searchfox.org/mozilla-central/source/toolkit/mozapps/update/nsIUpdateService.idl.
"
  }

  dimension: metrics__boolean__update_enabled {
    sql: ${TABLE}.metrics.boolean.update_enabled ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Update Enabled"
    description: "True when policies are disabled or when the \"DisableAppUpdate\" is not in effect.
"
  }

  dimension: metrics__boolean__update_service_enabled {
    sql: ${TABLE}.metrics.boolean.update_service_enabled ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Update Service Enabled"
    description: "Preference \"app.update.service.enabled\": whether the Mozilla Maintenance Service is enabled.
"
  }

  dimension: metrics__datetime__raw_background_update_targeting_env_current_date {
    sql: ${TABLE}.metrics.datetime.raw_background_update_targeting_env_current_date ;;
    type: string
    group_label: "Metrics Datetime"
    group_item_label: "Raw Background Update Targeting Env Current Date"
  }

  dimension: metrics__datetime__raw_background_update_targeting_env_profile_age {
    sql: ${TABLE}.metrics.datetime.raw_background_update_targeting_env_profile_age ;;
    type: string
    group_label: "Metrics Datetime"
    group_item_label: "Raw Background Update Targeting Env Profile Age"
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

  dimension: metrics__quantity__background_update_targeting_env_firefox_version {
    sql: ${TABLE}.metrics.quantity.background_update_targeting_env_firefox_version ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Background Update Targeting Env Firefox Version"
    description: "The `environment.firefoxVersion` of the default profile's serialized targeting snapshot.  At the time of writing, this version is an integer representing the Firefox major version, e.g., `109`.
"
  }

  dimension: metrics__quantity__background_update_targeting_version {
    sql: ${TABLE}.metrics.quantity.background_update_targeting_version ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Background Update Targeting Version"
    description: "If the default profile had a targeting snapshot serialized to disk, the `version` of the snapshot.
This version number does not have a physical unit: it's only useful to compare between versions.
"
  }

  dimension: metrics__string__background_update_final_state {
    sql: ${TABLE}.metrics.string.background_update_final_state ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Background Update Final State"
    description: "String description of the final state the update state machine reached.
"
  }

  dimension: metrics__string__update_channel {
    sql: ${TABLE}.metrics.string.update_channel ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Update Channel"
    description: "The update channel.
"
  }

  dimension: metrics__string_list__background_update_reasons {
    sql: ${TABLE}.metrics.string_list.background_update_reasons ;;
    hidden: yes
  }

  dimension: metrics__string_list__background_update_states {
    sql: ${TABLE}.metrics.string_list.background_update_states ;;
    hidden: yes
  }

  dimension: metrics__uuid__background_update_client_id {
    sql: ${TABLE}.metrics.uuid.background_update_client_id ;;
    type: string
    group_label: "Metrics Uuid"
    group_item_label: "Background Update Client Id"
    description: "The legacy Telemetry client ID of this installation's default profile.
The default profile is as determined by the Profile Service, namely `nsIToolkitProfileService.defaultProfile`.  The majority of users have only one Firefox installation and only one profile, so the default profile is their regular browsing profile.
It is possible for a Firefox installation to not have a default profile, but in such cases the background update task will abort before sending any telemetry; therefore, the legacy Telemetry client ID should always be present.
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

  dimension_group: metrics__datetime__background_update_targeting_env_current {
    sql: ${TABLE}.metrics.datetime.background_update_targeting_env_current_date ;;
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
    label: "Metrics Datetime: Background Update Targeting Env Current Date"
    description: "The `environment.currentDate` of the default profile's serialized targeting snapshot.
"
  }

  dimension_group: metrics__datetime__background_update_targeting_env_profile_age {
    sql: ${TABLE}.metrics.datetime.background_update_targeting_env_profile_age ;;
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
    label: "Metrics Datetime: Background Update Targeting Env Profile Age"
    description: "The `environment.profileAgeCreated` of the default profile's serialized targeting snapshot.
"
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

  sql_table_name: `mozdata.firefox_desktop_background_update.background_update` ;;
}

view: background_update_table__events {
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

view: background_update_table__events__extra {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: string
  }
}

view: background_update_table__ping_info__experiments {
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