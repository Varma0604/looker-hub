
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: tcp_rollout_histogram {
  sql_table_name: moz-fx-data-shared-prod.operational_monitoring.tcp_rollout_histogram ;;

  dimension: submission_date {
    type: date
    sql: ${TABLE}.submission_date ;;
  }

  dimension: branch {
    sql: ${TABLE}.branch ;;
    type: string
  }

  dimension: country {
    sql: ${TABLE}.country ;;
    type: string
    map_layer_name: countries
  }

  dimension: os {
    sql: ${TABLE}.os ;;
    type: string
  }

  dimension: probe {
    sql: ${TABLE}.probe ;;
    type: string
  }

  parameter: percentile_conf {
    type: number
    label: "Percentile"
    default_value: "50.0"
  }

  measure: percentile {
    type: number
    sql: `moz-fx-data-shared-prod`.udf_js.jackknife_percentile_ci(
    {% parameter percentile_conf %},
    STRUCT(
        mozfun.hist.merge(
          ARRAY_AGG(
            ${TABLE}.histogram IGNORE NULLS
          )
        ).values AS values
    )
).percentile ;;
  }

  measure: low {
    type: number
    sql: `moz-fx-data-shared-prod`.udf_js.jackknife_percentile_ci(
    {% parameter percentile_conf %},
    STRUCT(
        mozfun.hist.merge(
          ARRAY_AGG(
            ${TABLE}.histogram IGNORE NULLS
          )
        ).values AS values
    )
).low ;;
  }

  measure: high {
    type: number
    sql: `moz-fx-data-shared-prod`.udf_js.jackknife_percentile_ci(
    {% parameter percentile_conf %},
    STRUCT(
        mozfun.hist.merge(
          ARRAY_AGG(
            ${TABLE}.histogram IGNORE NULLS
          )
        ).values AS values
    )
).high ;;
  }
}