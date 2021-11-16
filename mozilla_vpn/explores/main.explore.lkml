include: "/looker-hub/mozilla_vpn/views/main.view.lkml"

explore: main {
  sql_always_where: ${main.submission_date} >= '2010-01-01' ;;
  view_label: " Main"
  description: "Explore for the main ping. A simple ping to send glean events generated by the Mozilla VPN client."
  view_name: main

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: main__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${main.metrics__labeled_counter__glean_error_invalid_label}) AS main__metrics__labeled_counter__glean_error_invalid_label ON ${main.document_id} = ${main__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: main__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${main.metrics__labeled_counter__glean_error_invalid_overflow}) AS main__metrics__labeled_counter__glean_error_invalid_overflow ON ${main.document_id} = ${main__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: main__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${main.metrics__labeled_counter__glean_error_invalid_state}) AS main__metrics__labeled_counter__glean_error_invalid_state ON ${main.document_id} = ${main__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: main__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${main.metrics__labeled_counter__glean_error_invalid_value}) AS main__metrics__labeled_counter__glean_error_invalid_value ON ${main.document_id} = ${main__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }
}

explore: suggest__main__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__main__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__main__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__main__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}