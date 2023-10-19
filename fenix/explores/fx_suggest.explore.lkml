
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/fenix/views/fx_suggest.view.lkml"

explore: fx_suggest {
  sql_always_where: ${fx_suggest.submission_date} >= '2010-01-01' ;;
  view_label: " Fx_Suggest"
  description: "Explore for the fx_suggest ping. A ping representing a single event occurring with or to a Firefox Suggestion. Distinguishable by its `ping_type`. Does not contain a `client_id`, preferring a `context_id` instead."
  view_name: fx_suggest

  always_filter: {
    filters: [
      channel: "beta",
      submission_date: "28 days",
    ]
  }

  join: fx_suggest__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${fx_suggest.metrics__labeled_counter__glean_error_invalid_label}) AS fx_suggest__metrics__labeled_counter__glean_error_invalid_label ON ${fx_suggest.document_id} = ${fx_suggest__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: fx_suggest__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${fx_suggest.metrics__labeled_counter__glean_error_invalid_overflow}) AS fx_suggest__metrics__labeled_counter__glean_error_invalid_overflow ON ${fx_suggest.document_id} = ${fx_suggest__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: fx_suggest__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${fx_suggest.metrics__labeled_counter__glean_error_invalid_state}) AS fx_suggest__metrics__labeled_counter__glean_error_invalid_state ON ${fx_suggest.document_id} = ${fx_suggest__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: fx_suggest__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${fx_suggest.metrics__labeled_counter__glean_error_invalid_value}) AS fx_suggest__metrics__labeled_counter__glean_error_invalid_value ON ${fx_suggest.document_id} = ${fx_suggest__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }
}

explore: suggest__fx_suggest__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__fx_suggest__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__fx_suggest__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__fx_suggest__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}