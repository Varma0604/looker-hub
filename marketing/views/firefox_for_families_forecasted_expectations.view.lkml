
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: firefox_for_families_forecasted_expectations {
  dimension: Country_Group {
    sql: ${TABLE}.Country_Group ;;
    type: string
  }

  dimension: Metric {
    sql: ${TABLE}.Metric ;;
    type: string
  }

  dimension: Value {
    sql: ${TABLE}.Value ;;
    type: number
  }

  dimension_group: Date {
    sql: ${TABLE}.Date ;;
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
    description: "%m/%d/%E4Y"
  }

  sql_table_name: `mozdata.analysis.marketing_firefox_for_families_forecasted_expectations` ;;
}