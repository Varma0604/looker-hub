
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/firefox_ios/views/baseline.view.lkml"

explore: baseline {
  sql_always_where: ${baseline.submission_date} >= '2010-01-01' ;;
  view_label: " Baseline"
  description: "Explore for the baseline ping. This ping is intended to provide metrics that are managed by the library itself, and not explicitly set by the application or included in the application's `metrics.yaml` file. The `baseline` ping is automatically sent when the application becomes inactive and when the application becomes active again (including application start). Please see the Reasons section for more information."
  view_name: baseline

  always_filter: {
    filters: [
      channel: "mozdata.firefox^_ios.baseline",
      submission_date: "28 days",
    ]
  }

  join: baseline__metrics__labeled_counter__browser_search_ad_clicks {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__browser_search_ad_clicks}) AS baseline__metrics__labeled_counter__browser_search_ad_clicks ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__browser_search_ad_clicks.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__browser_search_with_ads {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__browser_search_with_ads}) AS baseline__metrics__labeled_counter__browser_search_with_ads ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__browser_search_with_ads.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_label}) AS baseline__metrics__labeled_counter__glean_error_invalid_label ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_overflow}) AS baseline__metrics__labeled_counter__glean_error_invalid_overflow ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_state}) AS baseline__metrics__labeled_counter__glean_error_invalid_state ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_value}) AS baseline__metrics__labeled_counter__glean_error_invalid_value ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_validation_pings_submitted {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_validation_pings_submitted}) AS baseline__metrics__labeled_counter__glean_validation_pings_submitted ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__glean_validation_pings_submitted.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__search_counts {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__search_counts}) AS baseline__metrics__labeled_counter__search_counts ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__search_counts.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__search_in_content {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__search_in_content}) AS baseline__metrics__labeled_counter__search_in_content ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__search_in_content.document_id} ;;
  }
}

explore: suggest__baseline__metrics__labeled_counter__browser_search_ad_clicks {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__browser_search_with_ads {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__glean_validation_pings_submitted {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__search_counts {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__search_in_content {
  hidden: yes
}