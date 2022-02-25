
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metrics_table {
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

  dimension: metrics__boolean__browser_ui_proton_enabled {
    sql: ${TABLE}.metrics.boolean.browser_ui_proton_enabled ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Browser Ui Proton Enabled"
    description: "True if the Proton default theme is enabled.
"
  }

  dimension: metrics__boolean__fog_failed_idle_registration {
    sql: ${TABLE}.metrics.boolean.fog_failed_idle_registration ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Fog Failed Idle Registration"
    description: "True if we failed to register with the idle service. Absent otherwise.
Means IPC probably isn't working well.
Child-process data will likely be absent, or incomplete.
"
  }

  dimension: metrics__boolean__gifft_validation_main_ping_assembling {
    sql: ${TABLE}.metrics.boolean.gifft_validation_main_ping_assembling ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Gifft Validation Main Ping Assembling"
    description: "The value `true`, recorded when a Firefox Telemetry \"main\" ping is about
to be assembled.
To be used to validate GIFFT.
"
  }

  dimension: metrics__boolean__glean_core_migration_successful {
    sql: ${TABLE}.metrics.boolean.glean_core_migration_successful ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Glean Core Migration Successful"
    description: "Reports `true` if the client was successfully migrated from the Android-specific implementation of the Glean SDK to the cross-platform one."
  }

  dimension: metrics__boolean__glean_error_preinit_tasks_timeout {
    sql: ${TABLE}.metrics.boolean.glean_error_preinit_tasks_timeout ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Glean Error Preinit Tasks Timeout"
    description: "Set to true if the tasks that are queued prior to Glean initialization time out."
  }

  dimension: metrics__counter__browser_engagement_active_ticks {
    sql: ${TABLE}.metrics.counter.browser_engagement_active_ticks ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Browser Engagement Active Ticks"
    description: "The number of five-second intervals ('ticks') the user was considered
'active'.

'active' means keyboard or mouse interaction with the application.
It doesn't take into account whether or not the window has focus or is in
the foreground, only if it is receiving these interaction events.

Migrated from Telemetry's `browser.engagement.active_ticks`.
"
  }

  dimension: metrics__counter__browser_engagement_uri_count {
    sql: ${TABLE}.metrics.counter.browser_engagement_uri_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Browser Engagement Uri Count"
    description: "The number of total non-unique http(s) URIs visited, including page
reloads, after the session has been restored. URIs on minimized or
background tabs may also be counted. Private browsing uris are included.

Migrated from Telemetry's
`browser.engagement.total_uri_count_normal_and_private_mode`.
"
  }

  dimension: metrics__counter__fog_ipc_flush_failures {
    sql: ${TABLE}.metrics.counter.fog_ipc_flush_failures ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Fog Ipc Flush Failures"
    description: "The number of times we failed to flush all non-parent-process data,
throwing even partial results into the trash.
If this number is high, we might consider writing custom `MozPromise`-
handling code instead of using `MozPromise::All`.
"
  }

  dimension: metrics__counter__fog_ipc_replay_failures {
    sql: ${TABLE}.metrics.counter.fog_ipc_replay_failures ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Fog Ipc Replay Failures"
    description: "The number of times the ipc buffer failed to be replayed in the
parent process.
"
  }

  dimension: metrics__counter__glean_error_io {
    sql: ${TABLE}.metrics.counter.glean_error_io ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Error Io"
    description: "The number of times we encountered an IO error
when writing a pending ping to disk.
"
  }

  dimension: metrics__counter__glean_error_preinit_tasks_overflow {
    sql: ${TABLE}.metrics.counter.glean_error_preinit_tasks_overflow ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Error Preinit Tasks Overflow"
    description: "The number of tasks queued in the pre-initialization buffer.
Only sent if the buffer overflows.
"
  }

  dimension: metrics__counter__glean_time_invalid_timezone_offset {
    sql: ${TABLE}.metrics.counter.glean_time_invalid_timezone_offset ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Time Invalid Timezone Offset"
    description: "Counts the number of times we encountered an invalid timezone offset
when trying to get the current time.
A timezone offset is invalid if it is outside [-24h, +24h].
If invalid a UTC offset is used (+0h).
"
  }

  dimension: metrics__counter__glean_upload_deleted_pings_after_quota_hit {
    sql: ${TABLE}.metrics.counter.glean_upload_deleted_pings_after_quota_hit ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Upload Deleted Pings After Quota Hit"
    description: "The number of pings deleted after the quota
for the size of the pending pings directory or number of files is hit.
Since quota is only calculated for the pending pings directory,
and deletion request ping live in a different directory,
deletion request pings are never deleted.
"
  }

  dimension: metrics__counter__glean_upload_pending_pings {
    sql: ${TABLE}.metrics.counter.glean_upload_pending_pings ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Upload Pending Pings"
    description: "The total number of pending pings at startup.
This does not include deletion-request pings.
"
  }

  dimension: metrics__counter__glean_validation_app_forceclosed_count {
    sql: ${TABLE}.metrics.counter.glean_validation_app_forceclosed_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Validation App Forceclosed Count"
    description: "This metric counts how many times a dirty bit was detected when starting the Glean SDK, on Android. This dirty bit is set to `true` when Android's lifecycle `ON_START` is hit and flipped back to false on `ON_STOP`. When an application is force-closed, it might not get the `ON_STOP` and so the value would stay `true`. The next time Glean starts, it will increment this counter."
  }

  dimension: metrics__counter__glean_validation_baseline_ping_count {
    sql: ${TABLE}.metrics.counter.glean_validation_baseline_ping_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Validation Baseline Ping Count"
    description: "The number of baseline pings sent during the lifetime of this metrics ping."
  }

  dimension: metrics__counter__glean_validation_foreground_count {
    sql: ${TABLE}.metrics.counter.glean_validation_foreground_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Validation Foreground Count"
    description: "On mobile, the number of times the application went to foreground.
"
  }

  dimension: metrics__counter__power_cpu_time_bogus_values {
    sql: ${TABLE}.metrics.counter.power_cpu_time_bogus_values ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Power Cpu Time Bogus Values"
    description: "Impossibly large CPU time values that were discarded.
"
  }

  dimension: metrics__counter__power_gpu_time_bogus_values {
    sql: ${TABLE}.metrics.counter.power_gpu_time_bogus_values ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Power Gpu Time Bogus Values"
    description: "Impossibly large GPU time values that were discarded.
"
  }

  dimension: metrics__counter__power_total_cpu_time_ms {
    sql: ${TABLE}.metrics.counter.power_total_cpu_time_ms ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Power Total Cpu Time Ms"
    description: "Total CPU time used by all processes in ms.
"
  }

  dimension: metrics__counter__power_total_gpu_time_ms {
    sql: ${TABLE}.metrics.counter.power_total_gpu_time_ms ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Power Total Gpu Time Ms"
    description: "Total GPU time used by all processes in ms.
"
  }

  dimension: metrics__datetime__glean_validation_first_run_hour {
    sql: ${TABLE}.metrics.datetime.glean_validation_first_run_hour ;;
    type: string
    group_label: "Metrics Datetime"
    group_item_label: "Glean Validation First Run Hour"
    description: "The hour of the first run of the application.
"
  }

  dimension: metrics__jwe {
    sql: ${TABLE}.metrics.jwe ;;
    hidden: yes
  }

  dimension: metrics__labeled_boolean__startup_run_from_dmg_install_outcome {
    sql: ${TABLE}.metrics.labeled_boolean.startup_run_from_dmg_install_outcome ;;
    hidden: yes
    description: "The outcome after the app detected that it was running from DMG and should offer to install and relaunch itself.
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

  dimension: metrics__labeled_counter__glean_upload_ping_upload_failure {
    sql: ${TABLE}.metrics.labeled_counter.glean_upload_ping_upload_failure ;;
    hidden: yes
    description: "Counts the number of ping upload failures, by type of failure.
This includes failures for all ping types,
though the counts appear in the next successfully sent `metrics` ping.
"
  }

  dimension: metrics__labeled_counter__glean_validation_pings_submitted {
    sql: ${TABLE}.metrics.labeled_counter.glean_validation_pings_submitted ;;
    hidden: yes
    description: "A count of the pings submitted, by ping type.

This metric appears in both the metrics and baseline pings.

- On the metrics ping, the counts include the number of pings sent since
  the last metrics ping (including the last metrics ping)
- On the baseline ping, the counts include the number of pings send since
  the last baseline ping (including the last baseline ping)
"
  }

  dimension: metrics__labeled_counter__power_cpu_time_per_process_type_ms {
    sql: ${TABLE}.metrics.labeled_counter.power_cpu_time_per_process_type_ms ;;
    hidden: yes
    description: "CPU time used by each process type in ms.
"
  }

  dimension: metrics__labeled_counter__power_gpu_time_per_process_type_ms {
    sql: ${TABLE}.metrics.labeled_counter.power_gpu_time_per_process_type_ms ;;
    hidden: yes
    description: "GPU time used by each process type in ms.
"
  }

  dimension: metrics__labeled_rate {
    sql: ${TABLE}.metrics.labeled_rate ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__fog_ipc_buffer_sizes__sum {
    sql: ${TABLE}.metrics.memory_distribution.fog_ipc_buffer_sizes.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Fog Ipc Buffer Sizes"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__fog_ipc_buffer_sizes__values {
    sql: ${TABLE}.metrics.memory_distribution.fog_ipc_buffer_sizes.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__glean_database_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.glean_database_size.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Database Size"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__glean_database_size__values {
    sql: ${TABLE}.metrics.memory_distribution.glean_database_size.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_discarded_exceeding_pings_size.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Upload Discarded Exceeding Pings Size"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__values {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_discarded_exceeding_pings_size.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__glean_upload_pending_pings_directory_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_pending_pings_directory_size.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Upload Pending Pings Directory Size"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__glean_upload_pending_pings_directory_size__values {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_pending_pings_directory_size.values ;;
    hidden: yes
  }

  dimension: metrics__quantity__browser_link_open_newwindow_restriction {
    sql: ${TABLE}.metrics.quantity.browser_link_open_newwindow_restriction ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Browser Link Open Newwindow Restriction"
    description: "browser.link.open_newwindow.restriction preference value, that is one of 0, 1, or 2, where 2 is desktop default
"
  }

  dimension: metrics__string__geckoview_validation_build_id {
    sql: ${TABLE}.metrics.string.geckoview_validation_build_id ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Geckoview Validation Build Id"
    description: "The Buildid of the Gecko engine, example: 20200205124310 Mirror of `geckoview.build_id` for validation of migrated data.
"
  }

  dimension: metrics__string__geckoview_validation_version {
    sql: ${TABLE}.metrics.string.geckoview_validation_version ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Geckoview Validation Version"
    description: "The version of the Gecko engine, example: 74.0a1 Mirror of `geckoview.version` for validation of migrated data.
"
  }

  dimension: metrics__string__ping_reason {
    sql: ${TABLE}.metrics.string.ping_reason ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Ping Reason"
    description: "The optional reason the ping was submitted.
The specific values for reason are specific to each ping, and are
documented in the ping's pings.yaml file.
"
  }

  dimension: metrics__text {
    sql: ${TABLE}.metrics.text ;;
    hidden: yes
  }

  dimension: metrics__timespan__fog_initialization__time_unit {
    sql: ${TABLE}.metrics.timespan.fog_initialization.time_unit ;;
    type: string
    group_label: "Metrics Timespan Fog Initialization"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timespan__fog_initialization__value {
    sql: ${TABLE}.metrics.timespan.fog_initialization.value ;;
    type: number
    group_label: "Metrics Timespan Fog Initialization"
    group_item_label: "Value"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__overflow {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__range {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__sum {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__underflow {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__values {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__range {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__values {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.values ;;
    hidden: yes
  }

  dimension: metrics__url {
    sql: ${TABLE}.metrics.url ;;
    hidden: yes
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

  sql_table_name: `mozdata.firefox_desktop.metrics` ;;
}

view: metrics_table__events {
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

view: metrics_table__events__extra {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: string
  }
}

view: metrics_table__metrics__jwe {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: string
  }
}

view: metrics_table__metrics__labeled_boolean__startup_run_from_dmg_install_outcome {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: yesno
  }
}

view: metrics_table__metrics__labeled_rate {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    hidden: yes
  }
}

view: metrics_table__metrics__labeled_rate__value {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__denominator {
    sql: ${TABLE}.value.denominator ;;
    type: number
    group_label: "Value"
    group_item_label: "Denominator"
  }

  dimension: value__numerator {
    sql: ${TABLE}.value.numerator ;;
    type: number
    group_label: "Value"
    group_item_label: "Numerator"
  }
}

view: metrics_table__metrics__memory_distribution__fog_ipc_buffer_sizes__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__glean_database_size__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__glean_upload_pending_pings_directory_size__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__text {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: string
  }
}

view: metrics_table__metrics__timing_distribution__fog_ipc_flush_durations__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__paint_build_displaylist_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__url {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: string
  }
}

view: metrics_table__ping_info__experiments {
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

  dimension: value__extra__type {
    sql: ${TABLE}.value.extra.type ;;
    type: string
    group_label: "Value Extra"
    group_item_label: "Type"
  }
}