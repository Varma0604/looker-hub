
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: engagement_clients_table {
  dimension: adjust_ad_group {
    sql: ${TABLE}.adjust_ad_group ;;
    type: string
  }

  dimension: adjust_campaign {
    sql: ${TABLE}.adjust_campaign ;;
    type: string
  }

  dimension: adjust_creative {
    sql: ${TABLE}.adjust_creative ;;
    type: string
  }

  dimension: adjust_network {
    sql: ${TABLE}.adjust_network ;;
    type: string
  }

  dimension: app_name {
    sql: ${TABLE}.app_name ;;
    type: string
  }

  dimension: app_version {
    sql: ${TABLE}.app_version ;;
    type: string
  }

  dimension: client_id {
    sql: ${TABLE}.client_id ;;
    hidden: yes
  }

  dimension: country {
    sql: ${TABLE}.country ;;
    type: string
    map_layer_name: countries
  }

  dimension: distribution_id {
    sql: ${TABLE}.distribution_id ;;
    type: string
  }

  dimension: install_source {
    sql: ${TABLE}.install_source ;;
    type: string
  }

  dimension: is_dau {
    sql: ${TABLE}.is_dau ;;
    type: yesno
  }

  dimension: is_mau {
    sql: ${TABLE}.is_mau ;;
    type: yesno
  }

  dimension: is_mobile {
    sql: ${TABLE}.is_mobile ;;
    type: yesno
  }

  dimension: is_wau {
    sql: ${TABLE}.is_wau ;;
    type: yesno
  }

  dimension: isp {
    sql: ${TABLE}.isp ;;
    type: string
  }

  dimension: lifecycle_stage {
    sql: ${TABLE}.lifecycle_stage ;;
    type: string
  }

  dimension: locale {
    sql: ${TABLE}.locale ;;
    type: string
  }

  dimension: meta_attribution_app {
    sql: ${TABLE}.meta_attribution_app ;;
    type: string
  }

  dimension: normalized_channel {
    sql: ${TABLE}.normalized_channel ;;
    type: string
  }

  dimension: paid_vs_organic {
    sql: ${TABLE}.paid_vs_organic ;;
    type: string
  }

  dimension: play_store_attribution_campaign {
    sql: ${TABLE}.play_store_attribution_campaign ;;
    type: string
  }

  dimension: play_store_attribution_medium {
    sql: ${TABLE}.play_store_attribution_medium ;;
    type: string
  }

  dimension: play_store_attribution_source {
    sql: ${TABLE}.play_store_attribution_source ;;
    type: string
  }

  dimension: sample_id {
    sql: ${TABLE}.sample_id ;;
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

  dimension_group: submission {
    sql: ${TABLE}.submission_date ;;
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

  sql_table_name: `mozdata.fenix.engagement_clients` ;;
}