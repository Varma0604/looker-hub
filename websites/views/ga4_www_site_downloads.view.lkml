
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: ga4_www_site_downloads {
  dimension: ad_content {
    sql: ${TABLE}.ad_content ;;
    type: string
  }

  dimension: browser {
    sql: ${TABLE}.browser ;;
    type: string
  }

  dimension: campaign {
    sql: ${TABLE}.campaign ;;
    type: string
  }

  dimension: campaign_from_event_params {
    sql: ${TABLE}.campaign_from_event_params ;;
    type: string
  }

  dimension: country {
    sql: ${TABLE}.country ;;
    type: string
    map_layer_name: countries
  }

  dimension: device_category {
    sql: ${TABLE}.device_category ;;
    type: string
  }

  dimension: download_events {
    sql: ${TABLE}.download_events ;;
    type: number
  }

  dimension: downloads {
    sql: ${TABLE}.downloads ;;
    type: number
  }

  dimension: language {
    sql: ${TABLE}.language ;;
    type: string
  }

  dimension: manual_campaign_id {
    sql: ${TABLE}.manual_campaign_id ;;
    type: string
  }

  dimension: manual_term {
    sql: ${TABLE}.manual_term ;;
    type: string
  }

  dimension: medium {
    sql: ${TABLE}.medium ;;
    type: string
  }

  dimension: non_fx_downloads {
    sql: ${TABLE}.non_fx_downloads ;;
    type: number
  }

  dimension: operating_system {
    sql: ${TABLE}.operating_system ;;
    type: string
  }

  dimension: source {
    sql: ${TABLE}.source ;;
    type: string
  }

  dimension: traffic_source_medium {
    sql: ${TABLE}.traffic_source_medium ;;
    type: string
  }

  dimension: traffic_source_name {
    sql: ${TABLE}.traffic_source_name ;;
    type: string
  }

  dimension: traffic_source_source {
    sql: ${TABLE}.traffic_source_source ;;
    type: string
  }

  dimension: visit_identifier {
    sql: ${TABLE}.visit_identifier ;;
    type: string
  }

  dimension_group: date {
    sql: ${TABLE}.date ;;
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

  sql_table_name: `moz-fx-data-marketing-prod.ga.www_site_downloads` ;;
}