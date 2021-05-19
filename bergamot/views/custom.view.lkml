view: custom {
  dimension: metrics__counter__errors_marian {
    sql: ${TABLE}.metrics.counter.errors_marian ;;
    type: number
    group_label: "Errors"
    group_item_label: "Marian"

    link: {
      label: "Glean Dictionary reference for Errors Marian"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_marian"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Marian code related error.
"
  }

  dimension: metrics__counter__errors_memory {
    sql: ${TABLE}.metrics.counter.errors_memory ;;
    type: number
    group_label: "Errors"
    group_item_label: "Memory"

    link: {
      label: "Glean Dictionary reference for Errors Memory"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_memory"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Memory allocation error.
"
  }

  dimension: metrics__counter__errors_model_download {
    sql: ${TABLE}.metrics.counter.errors_model_download ;;
    type: number
    group_label: "Errors"
    group_item_label: "Model Download"

    link: {
      label: "Glean Dictionary reference for Errors Model Download"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_model_download"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Failed to download a model for a supported language pair.
"
  }

  dimension: metrics__counter__errors_translation {
    sql: ${TABLE}.metrics.counter.errors_translation ;;
    type: number
    group_label: "Errors"
    group_item_label: "Translation"

    link: {
      label: "Glean Dictionary reference for Errors Translation"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_translation"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "The translation procedure has failed.
"
  }

  dimension: metrics__string__metadata_firefox_client_id {
    sql: ${TABLE}.metrics.string.metadata_firefox_client_id ;;
    type: string
    group_label: "Metadata"
    group_item_label: "Firefox Client Id"

    link: {
      label: "Glean Dictionary reference for Metadata Firefox Client Id"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/metadata_firefox_client_id"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Firefox Telemetry client id.
"
  }

  dimension: metrics__string__metadata_from_lang {
    sql: ${TABLE}.metrics.string.metadata_from_lang ;;
    type: string
    group_label: "Metadata"
    group_item_label: "From Lang"

    link: {
      label: "Glean Dictionary reference for Metadata From Lang"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/metadata_from_lang"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Translation source language.
"
  }

  dimension: metrics__string__metadata_to_lang {
    sql: ${TABLE}.metrics.string.metadata_to_lang ;;
    type: string
    group_label: "Metadata"
    group_item_label: "To Lang"

    link: {
      label: "Glean Dictionary reference for Metadata To Lang"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/metadata_to_lang"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Translation target language.
"
  }

  dimension: metrics__string__performance_model_download_time {
    sql: ${TABLE}.metrics.string.performance_model_download_time ;;
    type: string
    group_label: "Performance"
    group_item_label: "Model Download Time"

    link: {
      label: "Glean Dictionary reference for Performance Model Download Time"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/performance_model_download_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Time spent on downloading a translation model for a language pair (ms).
"
  }

  dimension: metrics__string__performance_model_load_time {
    sql: ${TABLE}.metrics.string.performance_model_load_time ;;
    type: string
    group_label: "Performance"
    group_item_label: "Model Load Time"

    link: {
      label: "Glean Dictionary reference for Performance Model Load Time"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/performance_model_load_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Time spent on loading a model into memory to start translation (ms).
"
  }

  dimension: metrics__string__performance_translation_quality {
    sql: ${TABLE}.metrics.string.performance_translation_quality ;;
    type: string
    group_label: "Performance"
    group_item_label: "Translation Quality"

    link: {
      label: "Glean Dictionary reference for Performance Translation Quality"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/performance_translation_quality"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Quality estimation of translation.
"
  }

  dimension: metrics__string__performance_translation_time {
    sql: ${TABLE}.metrics.string.performance_translation_time ;;
    type: string
    group_label: "Performance"
    group_item_label: "Translation Time"

    link: {
      label: "Glean Dictionary reference for Performance Translation Time"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/performance_translation_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Time spent on web page translation (ms).
"
  }

  dimension: metrics__string__performance_words_per_second {
    sql: ${TABLE}.metrics.string.performance_words_per_second ;;
    type: string
    group_label: "Performance"
    group_item_label: "Words Per Second"

    link: {
      label: "Glean Dictionary reference for Performance Words Per Second"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/performance_words_per_second"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Speed of translation.
"
  }

  dimension: metrics__counter__service_lang_mismatch {
    sql: ${TABLE}.metrics.counter.service_lang_mismatch ;;
    type: number
    group_label: "Service"
    group_item_label: "Lang Mismatch"

    link: {
      label: "Glean Dictionary reference for Service Lang Mismatch"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/service_lang_mismatch"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "The user and website languages do not match.
"
  }

  dimension: metrics__counter__service_not_supported {
    sql: ${TABLE}.metrics.counter.service_not_supported ;;
    type: number
    group_label: "Service"
    group_item_label: "Not Supported"

    link: {
      label: "Glean Dictionary reference for Service Not Supported"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/service_not_supported"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Language pair of user and website languages is not supported.
"
  }

  dimension: metrics__counter__service_not_suppported {
    sql: ${TABLE}.metrics.counter.service_not_suppported ;;
    type: number
    group_label: "Service"
    group_item_label: "Not Suppported"

    link: {
      label: "Glean Dictionary reference for Service Not Suppported"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/service_not_suppported"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Language pair of user and website languages is not supported.
"
  }

  dimension: metrics__counter__test_counter_test {
    sql: ${TABLE}.metrics.counter.test_counter_test ;;
    type: number
    group_label: "Test"
    group_item_label: "Counter Test"

    link: {
      label: "Glean Dictionary reference for Test Counter Test"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/test_counter_test"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Test counter.
"
  }

  dimension: metrics__string__test_string_test {
    sql: ${TABLE}.metrics.string.test_string_test ;;
    type: string
    group_label: "Test"
    group_item_label: "String Test"

    link: {
      label: "Glean Dictionary reference for Test String Test"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/test_string_test"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }

    description: "Test string.
"
  }

  dimension: additional_properties {
    sql: ${TABLE}.additional_properties ;;
    type: string
  }

  dimension: client_info__android_sdk_version {
    sql: ${TABLE}.client_info.android_sdk_version ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Android Sdk Version"
  }

  dimension: client_info__app_build {
    sql: ${TABLE}.client_info.app_build ;;
    type: string
    group_label: "Client Info"
    group_item_label: "App Build"
  }

  dimension: client_info__app_channel {
    sql: ${TABLE}.client_info.app_channel ;;
    type: string
    group_label: "Client Info"
    group_item_label: "App Channel"
  }

  dimension: client_info__app_display_version {
    sql: ${TABLE}.client_info.app_display_version ;;
    type: string
    group_label: "Client Info"
    group_item_label: "App Display Version"
  }

  dimension: client_info__architecture {
    sql: ${TABLE}.client_info.architecture ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Architecture"
  }

  dimension: client_info__client_id {
    sql: ${TABLE}.client_info.client_id ;;
    hidden: yes
  }

  dimension: client_info__device_manufacturer {
    sql: ${TABLE}.client_info.device_manufacturer ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Device Manufacturer"
  }

  dimension: client_info__device_model {
    sql: ${TABLE}.client_info.device_model ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Device Model"
  }

  dimension: client_info__first_run_date {
    sql: ${TABLE}.client_info.first_run_date ;;
    type: string
    group_label: "Client Info"
    group_item_label: "First Run Date"
  }

  dimension: client_info__locale {
    sql: ${TABLE}.client_info.locale ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Locale"
  }

  dimension: client_info__os {
    sql: ${TABLE}.client_info.os ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Os"
  }

  dimension: client_info__os_version {
    sql: ${TABLE}.client_info.os_version ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Os Version"
  }

  dimension: client_info__telemetry_sdk_build {
    sql: ${TABLE}.client_info.telemetry_sdk_build ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Telemetry Sdk Build"
  }

  dimension: document_id {
    sql: ${TABLE}.document_id ;;
    hidden: yes
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
  }

  dimension: metadata__geo__db_version {
    sql: ${TABLE}.metadata.geo.db_version ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "Db Version"
  }

  dimension: metadata__geo__subdivision1 {
    sql: ${TABLE}.metadata.geo.subdivision1 ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "Subdivision1"
  }

  dimension: metadata__geo__subdivision2 {
    sql: ${TABLE}.metadata.geo.subdivision2 ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "Subdivision2"
  }

  dimension: metadata__header__date {
    sql: ${TABLE}.metadata.header.date ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "Date"
  }

  dimension: metadata__header__dnt {
    sql: ${TABLE}.metadata.header.dnt ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "Dnt"
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
  }

  dimension: metadata__header__x_pingsender_version {
    sql: ${TABLE}.metadata.header.x_pingsender_version ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Pingsender Version"
  }

  dimension: metadata__header__x_source_tags {
    sql: ${TABLE}.metadata.header.x_source_tags ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Source Tags"
  }

  dimension: metadata__header__x_telemetry_agent {
    sql: ${TABLE}.metadata.header.x_telemetry_agent ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Telemetry Agent"
  }

  dimension: metadata__isp__db_version {
    sql: ${TABLE}.metadata.isp.db_version ;;
    type: string
    group_label: "Metadata Isp"
    group_item_label: "Db Version"
  }

  dimension: metadata__isp__name {
    sql: ${TABLE}.metadata.isp.name ;;
    type: string
    group_label: "Metadata Isp"
    group_item_label: "Name"
  }

  dimension: metadata__isp__organization {
    sql: ${TABLE}.metadata.isp.organization ;;
    type: string
    group_label: "Metadata Isp"
    group_item_label: "Organization"
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

  dimension: normalized_app_name {
    sql: ${TABLE}.normalized_app_name ;;
    type: string
  }

  dimension: normalized_channel {
    sql: ${TABLE}.normalized_channel ;;
    type: string
  }

  dimension: normalized_country_code {
    sql: ${TABLE}.normalized_country_code ;;
    type: string
  }

  dimension: normalized_os {
    sql: ${TABLE}.normalized_os ;;
    type: string
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
  }

  measure: clients {
    type: count_distinct
    sql: ${client_info__client_id} ;;
  }

  measure: ping_count {
    type: count
  }

  measure: errors_marian {
    type: sum
    sql: ${metrics__counter__errors_marian} ;;

    link: {
      label: "Glean Dictionary reference for Errors Marian"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_marian"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: errors_marian_client_count {
    type: count_distinct
    filters: [
      metrics__counter__errors_marian: ">0",
    ]
    sql: ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Errors Marian"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_marian"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: errors_memory {
    type: sum
    sql: ${metrics__counter__errors_memory} ;;

    link: {
      label: "Glean Dictionary reference for Errors Memory"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_memory"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: errors_memory_client_count {
    type: count_distinct
    filters: [
      metrics__counter__errors_memory: ">0",
    ]
    sql: ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Errors Memory"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_memory"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: errors_model_download {
    type: sum
    sql: ${metrics__counter__errors_model_download} ;;

    link: {
      label: "Glean Dictionary reference for Errors Model Download"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_model_download"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: errors_model_download_client_count {
    type: count_distinct
    filters: [
      metrics__counter__errors_model_download: ">0",
    ]
    sql: ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Errors Model Download"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_model_download"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: errors_translation {
    type: sum
    sql: ${metrics__counter__errors_translation} ;;

    link: {
      label: "Glean Dictionary reference for Errors Translation"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_translation"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: errors_translation_client_count {
    type: count_distinct
    filters: [
      metrics__counter__errors_translation: ">0",
    ]
    sql: ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Errors Translation"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/errors_translation"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: service_lang_mismatch {
    type: sum
    sql: ${metrics__counter__service_lang_mismatch} ;;

    link: {
      label: "Glean Dictionary reference for Service Lang Mismatch"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/service_lang_mismatch"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: service_lang_mismatch_client_count {
    type: count_distinct
    filters: [
      metrics__counter__service_lang_mismatch: ">0",
    ]
    sql: ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Service Lang Mismatch"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/service_lang_mismatch"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: service_not_supported {
    type: sum
    sql: ${metrics__counter__service_not_supported} ;;

    link: {
      label: "Glean Dictionary reference for Service Not Supported"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/service_not_supported"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: service_not_supported_client_count {
    type: count_distinct
    filters: [
      metrics__counter__service_not_supported: ">0",
    ]
    sql: ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Service Not Supported"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/service_not_supported"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: service_not_suppported {
    type: sum
    sql: ${metrics__counter__service_not_suppported} ;;

    link: {
      label: "Glean Dictionary reference for Service Not Suppported"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/service_not_suppported"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: service_not_suppported_client_count {
    type: count_distinct
    filters: [
      metrics__counter__service_not_suppported: ">0",
    ]
    sql: ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Service Not Suppported"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/service_not_suppported"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: test_counter_test {
    type: sum
    sql: ${metrics__counter__test_counter_test} ;;

    link: {
      label: "Glean Dictionary reference for Test Counter Test"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/test_counter_test"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: test_counter_test_client_count {
    type: count_distinct
    filters: [
      metrics__counter__test_counter_test: ">0",
    ]
    sql: ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Test Counter Test"
      url: "https://dictionary.telemetry.mozilla.org/apps/bergamot/metrics/test_counter_test"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  sql_table_name: `mozdata.org_mozilla_bergamot.custom` ;;
}