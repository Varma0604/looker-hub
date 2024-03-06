
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

  dimension: metrics__boolean__glean_error_preinit_tasks_timeout {
    sql: ${TABLE}.metrics.boolean.glean_error_preinit_tasks_timeout ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Glean Error Preinit Tasks Timeout"
    description: "Set to true if the tasks that are queued prior to Glean initialization time out."
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
    description: "The number of tasks that overflowed the pre-initialization buffer.
Only sent if the buffer ever overflows.

In Version 0 this reported the total number of tasks enqueued.
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

  dimension: metrics__counter__glean_upload_in_flight_pings_dropped {
    sql: ${TABLE}.metrics.counter.glean_upload_in_flight_pings_dropped ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Upload In Flight Pings Dropped"
    description: "How many pings were dropped because we found them already in-flight.
"
  }

  dimension: metrics__counter__glean_upload_missing_send_ids {
    sql: ${TABLE}.metrics.counter.glean_upload_missing_send_ids ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Upload Missing Send Ids"
    description: "How many ping upload responses did we not record as a success or failure
(in `glean.upload.send_success` or `glean.upload.send_failue`,
respectively) due to an inconsistency in our internal bookkeeping?
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

  dimension: metrics__counter__glean_validation_foreground_count {
    sql: ${TABLE}.metrics.counter.glean_validation_foreground_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Validation Foreground Count"
    description: "On mobile, the number of times the application went to foreground.
"
  }

  dimension: metrics__datetime__raw_glean_validation_first_run_hour {
    sql: ${TABLE}.metrics.datetime.raw_glean_validation_first_run_hour ;;
    type: string
    group_label: "Metrics Datetime"
    group_item_label: "Raw Glean Validation First Run Hour"
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

  dimension: metrics__memory_distribution__glean_database_size__count {
    sql: ${TABLE}.metrics.memory_distribution.glean_database_size.count ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Database Size"
    group_item_label: "Count"
    description: "This was accidentally sent in the past and is now deprecated. See https://bugzilla.mozilla.org/show_bug.cgi?id=1799509#c5"
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

  dimension: metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__count {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_discarded_exceeding_pings_size.count ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Upload Discarded Exceeding Pings Size"
    group_item_label: "Count"
    description: "This was accidentally sent in the past and is now deprecated. See https://bugzilla.mozilla.org/show_bug.cgi?id=1799509#c5"
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

  dimension: metrics__memory_distribution__glean_upload_pending_pings_directory_size__count {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_pending_pings_directory_size.count ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Upload Pending Pings Directory Size"
    group_item_label: "Count"
    description: "This was accidentally sent in the past and is now deprecated. See https://bugzilla.mozilla.org/show_bug.cgi?id=1799509#c5"
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

  dimension: metrics__string__glean_client_annotation_experimentation_id {
    sql: ${TABLE}.metrics.string.glean_client_annotation_experimentation_id ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Glean Client Annotation Experimentation Id"
    description: "An experimentation identifier derived and provided by the application
for the purpose of experimentation enrollment.
"
  }

  dimension: metrics__string__glean_database_rkv_load_error {
    sql: ${TABLE}.metrics.string.glean_database_rkv_load_error ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Glean Database Rkv Load Error"
    description: "If there was an error loading the RKV database, record it.
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

  dimension: metrics__timing_distribution__glean_upload_send_failure__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__count {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Count"
    description: "This was accidentally sent in the past and is now deprecated. See https://bugzilla.mozilla.org/show_bug.cgi?id=1799509#c5"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__overflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__range {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__sum {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__underflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__values {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__count {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Count"
    description: "This was accidentally sent in the past and is now deprecated. See https://bugzilla.mozilla.org/show_bug.cgi?id=1799509#c5"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__overflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__range {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__sum {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__underflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__values {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__count {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Count"
    description: "This was accidentally sent in the past and is now deprecated. See https://bugzilla.mozilla.org/show_bug.cgi?id=1799509#c5"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__overflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__range {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__sum {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__underflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__values {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__count {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Count"
    description: "This was accidentally sent in the past and is now deprecated. See https://bugzilla.mozilla.org/show_bug.cgi?id=1799509#c5"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__overflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__range {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__sum {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__underflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__values {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.values ;;
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

  dimension_group: metrics__datetime__glean_validation_first_run_hour {
    sql: ${TABLE}.metrics.datetime.glean_validation_first_run_hour ;;
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
    label: "Metrics Datetime: Glean Validation First Run Hour"
    description: "The hour of the first run of the application.
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

  sql_table_name: `mozdata.mozillavpn_backend_cirrus.metrics` ;;
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

view: metrics_table__metrics__timing_distribution__glean_upload_send_failure__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__glean_upload_send_success__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__glean_validation_shutdown_wait__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
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