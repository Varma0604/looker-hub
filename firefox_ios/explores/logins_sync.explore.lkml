
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/firefox_ios/views/logins_sync.view.lkml"

explore: logins_sync {
  sql_always_where: ${logins_sync.submission_date} >= '2010-01-01' ;;
  view_label: " Logins_Sync"
  description: "Explore for the logins_sync ping. A ping sent for every logins/passwords sync. It doesn't include the `client_id` because it reports a hashed version of the user's Firefox Account ID."
  view_name: logins_sync

  always_filter: {
    filters: [
      channel: "release",
      submission_date: "28 days",
    ]
  }

  join: logins_sync__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${logins_sync.metrics__labeled_counter__glean_error_invalid_label}) AS logins_sync__metrics__labeled_counter__glean_error_invalid_label ON ${logins_sync.document_id} = ${logins_sync__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: logins_sync__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${logins_sync.metrics__labeled_counter__glean_error_invalid_overflow}) AS logins_sync__metrics__labeled_counter__glean_error_invalid_overflow ON ${logins_sync.document_id} = ${logins_sync__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: logins_sync__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${logins_sync.metrics__labeled_counter__glean_error_invalid_state}) AS logins_sync__metrics__labeled_counter__glean_error_invalid_state ON ${logins_sync.document_id} = ${logins_sync__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: logins_sync__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${logins_sync.metrics__labeled_counter__glean_error_invalid_value}) AS logins_sync__metrics__labeled_counter__glean_error_invalid_value ON ${logins_sync.document_id} = ${logins_sync__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }

  join: logins_sync__metrics__labeled_counter__logins_sync_incoming {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${logins_sync.metrics__labeled_counter__logins_sync_incoming}) AS logins_sync__metrics__labeled_counter__logins_sync_incoming ON ${logins_sync.document_id} = ${logins_sync__metrics__labeled_counter__logins_sync_incoming.document_id} ;;
  }

  join: logins_sync__metrics__labeled_counter__logins_sync_outgoing {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${logins_sync.metrics__labeled_counter__logins_sync_outgoing}) AS logins_sync__metrics__labeled_counter__logins_sync_outgoing ON ${logins_sync.document_id} = ${logins_sync__metrics__labeled_counter__logins_sync_outgoing.document_id} ;;
  }

  join: logins_sync__metrics__labeled_counter__logins_sync_v2_incoming {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${logins_sync.metrics__labeled_counter__logins_sync_v2_incoming}) AS logins_sync__metrics__labeled_counter__logins_sync_v2_incoming ON ${logins_sync.document_id} = ${logins_sync__metrics__labeled_counter__logins_sync_v2_incoming.document_id} ;;
  }

  join: logins_sync__metrics__labeled_counter__logins_sync_v2_outgoing {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${logins_sync.metrics__labeled_counter__logins_sync_v2_outgoing}) AS logins_sync__metrics__labeled_counter__logins_sync_v2_outgoing ON ${logins_sync.document_id} = ${logins_sync__metrics__labeled_counter__logins_sync_v2_outgoing.document_id} ;;
  }

  join: logins_sync__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${logins_sync.events}) AS logins_sync__events ;;
  }

  join: logins_sync__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${logins_sync__events.extra}) AS logins_sync__events__extra ;;
  }

  join: logins_sync__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${logins_sync.ping_info__experiments}) AS logins_sync__ping_info__experiments ;;
  }
}

explore: suggest__logins_sync__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}