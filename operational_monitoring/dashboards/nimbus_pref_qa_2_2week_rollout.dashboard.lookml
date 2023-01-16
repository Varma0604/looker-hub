
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

- dashboard: nimbus_pref_qa_2_2week_rollout
  title: Nimbus Pref Qa 2 2Week Rollout
  layout: newspaper
  preferred_viewer: dashboards-next

  elements:
  - title: Retained
    name: Retained_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: nimbus_pref_qa_2_2week_rollout
    type: looker_line
    fields: [
      nimbus_pref_qa_2_2week_rollout.submission_date,
      nimbus_pref_qa_2_2week_rollout.branch,
      nimbus_pref_qa_2_2week_rollout.point
    ]
    pivots: [
      nimbus_pref_qa_2_2week_rollout.branch
    ]
    filters:
      nimbus_pref_qa_2_2week_rollout.metric: 'retained'
      nimbus_pref_qa_2_2week_rollout.statistic: mean
    row: 0
    col: 0
    width: 12
    height: 8
    field_x: nimbus_pref_qa_2_2week_rollout.submission_date
    field_y: nimbus_pref_qa_2_2week_rollout.point
    log_scale: false
    ci_lower: nimbus_pref_qa_2_2week_rollout.lower
    ci_upper: nimbus_pref_qa_2_2week_rollout.upper
    show_grid: true
    listen:
      Date: nimbus_pref_qa_2_2week_rollout.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Memory Total
    name: Memory Total_percentile
    note_state: expanded
    note_display: above
    note_text: Percentile
    explore: nimbus_pref_qa_2_2week_rollout
    type: "ci-line-chart"
    fields: [
      nimbus_pref_qa_2_2week_rollout.submission_date,
      nimbus_pref_qa_2_2week_rollout.branch,
      nimbus_pref_qa_2_2week_rollout.upper,
      nimbus_pref_qa_2_2week_rollout.lower,
      nimbus_pref_qa_2_2week_rollout.point
    ]
    pivots: [
      nimbus_pref_qa_2_2week_rollout.branch
    ]
    filters:
      nimbus_pref_qa_2_2week_rollout.metric: 'memory_total'
      nimbus_pref_qa_2_2week_rollout.statistic: percentile
    row: 0
    col: 12
    width: 12
    height: 8
    field_x: nimbus_pref_qa_2_2week_rollout.submission_date
    field_y: nimbus_pref_qa_2_2week_rollout.point
    log_scale: false
    ci_lower: nimbus_pref_qa_2_2week_rollout.lower
    ci_upper: nimbus_pref_qa_2_2week_rollout.upper
    show_grid: true
    listen:
      Date: nimbus_pref_qa_2_2week_rollout.submission_date
      Percentile: nimbus_pref_qa_2_2week_rollout.parameter
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Qualified Cumulative Days Of Use
    name: Qualified Cumulative Days Of Use_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: nimbus_pref_qa_2_2week_rollout
    type: looker_line
    fields: [
      nimbus_pref_qa_2_2week_rollout.submission_date,
      nimbus_pref_qa_2_2week_rollout.branch,
      nimbus_pref_qa_2_2week_rollout.point
    ]
    pivots: [
      nimbus_pref_qa_2_2week_rollout.branch
    ]
    filters:
      nimbus_pref_qa_2_2week_rollout.metric: 'qualified_cumulative_days_of_use'
      nimbus_pref_qa_2_2week_rollout.statistic: mean
    row: 10
    col: 0
    width: 12
    height: 8
    field_x: nimbus_pref_qa_2_2week_rollout.submission_date
    field_y: nimbus_pref_qa_2_2week_rollout.point
    log_scale: false
    ci_lower: nimbus_pref_qa_2_2week_rollout.lower
    ci_upper: nimbus_pref_qa_2_2week_rollout.upper
    show_grid: true
    listen:
      Date: nimbus_pref_qa_2_2week_rollout.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Search Count
    name: Search Count_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: nimbus_pref_qa_2_2week_rollout
    type: looker_line
    fields: [
      nimbus_pref_qa_2_2week_rollout.submission_date,
      nimbus_pref_qa_2_2week_rollout.branch,
      nimbus_pref_qa_2_2week_rollout.point
    ]
    pivots: [
      nimbus_pref_qa_2_2week_rollout.branch
    ]
    filters:
      nimbus_pref_qa_2_2week_rollout.metric: 'search_count'
      nimbus_pref_qa_2_2week_rollout.statistic: mean
    row: 10
    col: 12
    width: 12
    height: 8
    field_x: nimbus_pref_qa_2_2week_rollout.submission_date
    field_y: nimbus_pref_qa_2_2week_rollout.point
    log_scale: false
    ci_lower: nimbus_pref_qa_2_2week_rollout.lower
    ci_upper: nimbus_pref_qa_2_2week_rollout.upper
    show_grid: true
    listen:
      Date: nimbus_pref_qa_2_2week_rollout.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Days Of Use
    name: Days Of Use_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: nimbus_pref_qa_2_2week_rollout
    type: looker_line
    fields: [
      nimbus_pref_qa_2_2week_rollout.submission_date,
      nimbus_pref_qa_2_2week_rollout.branch,
      nimbus_pref_qa_2_2week_rollout.point
    ]
    pivots: [
      nimbus_pref_qa_2_2week_rollout.branch
    ]
    filters:
      nimbus_pref_qa_2_2week_rollout.metric: 'days_of_use'
      nimbus_pref_qa_2_2week_rollout.statistic: mean
    row: 20
    col: 0
    width: 12
    height: 8
    field_x: nimbus_pref_qa_2_2week_rollout.submission_date
    field_y: nimbus_pref_qa_2_2week_rollout.point
    log_scale: false
    ci_lower: nimbus_pref_qa_2_2week_rollout.lower
    ci_upper: nimbus_pref_qa_2_2week_rollout.upper
    show_grid: true
    listen:
      Date: nimbus_pref_qa_2_2week_rollout.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Uri Count
    name: Uri Count_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: nimbus_pref_qa_2_2week_rollout
    type: looker_line
    fields: [
      nimbus_pref_qa_2_2week_rollout.submission_date,
      nimbus_pref_qa_2_2week_rollout.branch,
      nimbus_pref_qa_2_2week_rollout.point
    ]
    pivots: [
      nimbus_pref_qa_2_2week_rollout.branch
    ]
    filters:
      nimbus_pref_qa_2_2week_rollout.metric: 'uri_count'
      nimbus_pref_qa_2_2week_rollout.statistic: mean
    row: 20
    col: 12
    width: 12
    height: 8
    field_x: nimbus_pref_qa_2_2week_rollout.submission_date
    field_y: nimbus_pref_qa_2_2week_rollout.point
    log_scale: false
    ci_lower: nimbus_pref_qa_2_2week_rollout.lower
    ci_upper: nimbus_pref_qa_2_2week_rollout.upper
    show_grid: true
    listen:
      Date: nimbus_pref_qa_2_2week_rollout.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Ad Clicks
    name: Ad Clicks_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: nimbus_pref_qa_2_2week_rollout
    type: looker_line
    fields: [
      nimbus_pref_qa_2_2week_rollout.submission_date,
      nimbus_pref_qa_2_2week_rollout.branch,
      nimbus_pref_qa_2_2week_rollout.point
    ]
    pivots: [
      nimbus_pref_qa_2_2week_rollout.branch
    ]
    filters:
      nimbus_pref_qa_2_2week_rollout.metric: 'ad_clicks'
      nimbus_pref_qa_2_2week_rollout.statistic: mean
    row: 30
    col: 0
    width: 12
    height: 8
    field_x: nimbus_pref_qa_2_2week_rollout.submission_date
    field_y: nimbus_pref_qa_2_2week_rollout.point
    log_scale: false
    ci_lower: nimbus_pref_qa_2_2week_rollout.lower
    ci_upper: nimbus_pref_qa_2_2week_rollout.upper
    show_grid: true
    listen:
      Date: nimbus_pref_qa_2_2week_rollout.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Active Hours
    name: Active Hours_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: nimbus_pref_qa_2_2week_rollout
    type: looker_line
    fields: [
      nimbus_pref_qa_2_2week_rollout.submission_date,
      nimbus_pref_qa_2_2week_rollout.branch,
      nimbus_pref_qa_2_2week_rollout.point
    ]
    pivots: [
      nimbus_pref_qa_2_2week_rollout.branch
    ]
    filters:
      nimbus_pref_qa_2_2week_rollout.metric: 'active_hours'
      nimbus_pref_qa_2_2week_rollout.statistic: mean
    row: 30
    col: 12
    width: 12
    height: 8
    field_x: nimbus_pref_qa_2_2week_rollout.submission_date
    field_y: nimbus_pref_qa_2_2week_rollout.point
    log_scale: false
    ci_lower: nimbus_pref_qa_2_2week_rollout.lower
    ci_upper: nimbus_pref_qa_2_2week_rollout.upper
    show_grid: true
    listen:
      Date: nimbus_pref_qa_2_2week_rollout.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  
  filters:
  - name: Date
    title: Date
    type: field_filter
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: operational_monitoring
    explore: nimbus_pref_qa_2_2week_rollout
    listens_to_filters: []
    field: nimbus_pref_qa_2_2week_rollout.submission_date

  - name: Percentile
    title: Percentile
    type: field_filter
    default_value: '50'
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: operational_monitoring
    explore: nimbus_pref_qa_2_2week_rollout
    listens_to_filters: []
    field: nimbus_pref_qa_2_2week_rollout.parameter
  