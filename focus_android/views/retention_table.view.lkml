
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: retention_table {
  dimension: active_metric_date {
    sql: ${TABLE}.active_metric_date ;;
    type: number
  }

  dimension: app_name {
    sql: ${TABLE}.app_name ;;
    type: string
  }

  dimension: app_version {
    sql: ${TABLE}.app_version ;;
    type: string
  }

  dimension: country {
    sql: ${TABLE}.country ;;
    type: string
    map_layer_name: countries
  }

  dimension: is_mobile {
    sql: ${TABLE}.is_mobile ;;
    type: yesno
  }

  dimension: lifecycle_stage {
    sql: ${TABLE}.lifecycle_stage ;;
    type: string
  }

  dimension: locale {
    sql: ${TABLE}.locale ;;
    type: string
  }

  dimension: new_profiles_metric_date {
    sql: ${TABLE}.new_profiles_metric_date ;;
    type: number
  }

  dimension: normalized_channel {
    sql: ${TABLE}.normalized_channel ;;
    type: string
  }

  dimension: ping_sent_metric_date {
    sql: ${TABLE}.ping_sent_metric_date ;;
    type: number
  }

  dimension: ping_sent_week_4 {
    sql: ${TABLE}.ping_sent_week_4 ;;
    type: number
  }

  dimension: repeat_profiles {
    sql: ${TABLE}.repeat_profiles ;;
    type: number
  }

  dimension: retained_week_4 {
    sql: ${TABLE}.retained_week_4 ;;
    type: number
  }

  dimension: retained_week_4_new_profiles {
    sql: ${TABLE}.retained_week_4_new_profiles ;;
    type: number
  }

  dimension_group: first_seen {
    sql: ${TABLE}.first_seen_date ;;
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
    convert_tz: no
    datatype: date
  }

  dimension_group: metric {
    sql: ${TABLE}.metric_date ;;
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
    convert_tz: no
    datatype: date
  }

  sql_table_name: `mozdata.focus_android.retention` ;;
}