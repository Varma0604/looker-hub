
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

- dashboard: ios_coordinators_rollout_2
  title: Ios Coordinators Rollout 2
  layout: newspaper
  preferred_viewer: dashboards-next

  elements:
  - title: Retained
    name: Retained_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: ios_coordinators_rollout_2
    type: looker_line
    fields: [
      ios_coordinators_rollout_2.submission_date,
      ios_coordinators_rollout_2.branch,
      ios_coordinators_rollout_2.point
    ]
    pivots: [
      ios_coordinators_rollout_2.branch
    ]
    filters:
      ios_coordinators_rollout_2.metric: 'retained'
      ios_coordinators_rollout_2.statistic: mean
    row: 0
    col: 0
    width: 12
    height: 8
    field_x: ios_coordinators_rollout_2.submission_date
    field_y: ios_coordinators_rollout_2.point
    log_scale: false
    ci_lower: ios_coordinators_rollout_2.lower
    ci_upper: ios_coordinators_rollout_2.upper
    show_grid: true
    listen:
      Date: ios_coordinators_rollout_2.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Search Count
    name: Search Count_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: ios_coordinators_rollout_2
    type: looker_line
    fields: [
      ios_coordinators_rollout_2.submission_date,
      ios_coordinators_rollout_2.branch,
      ios_coordinators_rollout_2.point
    ]
    pivots: [
      ios_coordinators_rollout_2.branch
    ]
    filters:
      ios_coordinators_rollout_2.metric: 'search_count'
      ios_coordinators_rollout_2.statistic: mean
    row: 0
    col: 12
    width: 12
    height: 8
    field_x: ios_coordinators_rollout_2.submission_date
    field_y: ios_coordinators_rollout_2.point
    log_scale: false
    ci_lower: ios_coordinators_rollout_2.lower
    ci_upper: ios_coordinators_rollout_2.upper
    show_grid: true
    listen:
      Date: ios_coordinators_rollout_2.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Ad Clicks
    name: Ad Clicks_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: ios_coordinators_rollout_2
    type: looker_line
    fields: [
      ios_coordinators_rollout_2.submission_date,
      ios_coordinators_rollout_2.branch,
      ios_coordinators_rollout_2.point
    ]
    pivots: [
      ios_coordinators_rollout_2.branch
    ]
    filters:
      ios_coordinators_rollout_2.metric: 'ad_clicks'
      ios_coordinators_rollout_2.statistic: mean
    row: 10
    col: 0
    width: 12
    height: 8
    field_x: ios_coordinators_rollout_2.submission_date
    field_y: ios_coordinators_rollout_2.point
    log_scale: false
    ci_lower: ios_coordinators_rollout_2.lower
    ci_upper: ios_coordinators_rollout_2.upper
    show_grid: true
    listen:
      Date: ios_coordinators_rollout_2.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Days Of Use
    name: Days Of Use_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: ios_coordinators_rollout_2
    type: looker_line
    fields: [
      ios_coordinators_rollout_2.submission_date,
      ios_coordinators_rollout_2.branch,
      ios_coordinators_rollout_2.point
    ]
    pivots: [
      ios_coordinators_rollout_2.branch
    ]
    filters:
      ios_coordinators_rollout_2.metric: 'days_of_use'
      ios_coordinators_rollout_2.statistic: mean
    row: 10
    col: 12
    width: 12
    height: 8
    field_x: ios_coordinators_rollout_2.submission_date
    field_y: ios_coordinators_rollout_2.point
    log_scale: false
    ci_lower: ios_coordinators_rollout_2.lower
    ci_upper: ios_coordinators_rollout_2.upper
    show_grid: true
    listen:
      Date: ios_coordinators_rollout_2.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Memory Total
    name: Memory Total_percentile
    note_state: expanded
    note_display: above
    note_text: Percentile
    explore: ios_coordinators_rollout_2
    type: "ci-line-chart"
    fields: [
      ios_coordinators_rollout_2.submission_date,
      ios_coordinators_rollout_2.branch,
      ios_coordinators_rollout_2.upper,
      ios_coordinators_rollout_2.lower,
      ios_coordinators_rollout_2.point
    ]
    pivots: [
      ios_coordinators_rollout_2.branch
    ]
    filters:
      ios_coordinators_rollout_2.metric: 'memory_total'
      ios_coordinators_rollout_2.statistic: percentile
    row: 20
    col: 0
    width: 12
    height: 8
    field_x: ios_coordinators_rollout_2.submission_date
    field_y: ios_coordinators_rollout_2.point
    log_scale: false
    ci_lower: ios_coordinators_rollout_2.lower
    ci_upper: ios_coordinators_rollout_2.upper
    show_grid: true
    listen:
      Date: ios_coordinators_rollout_2.submission_date
      Percentile: ios_coordinators_rollout_2.parameter
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Active Hours
    name: Active Hours_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: ios_coordinators_rollout_2
    type: looker_line
    fields: [
      ios_coordinators_rollout_2.submission_date,
      ios_coordinators_rollout_2.branch,
      ios_coordinators_rollout_2.point
    ]
    pivots: [
      ios_coordinators_rollout_2.branch
    ]
    filters:
      ios_coordinators_rollout_2.metric: 'active_hours'
      ios_coordinators_rollout_2.statistic: mean
    row: 20
    col: 12
    width: 12
    height: 8
    field_x: ios_coordinators_rollout_2.submission_date
    field_y: ios_coordinators_rollout_2.point
    log_scale: false
    ci_lower: ios_coordinators_rollout_2.lower
    ci_upper: ios_coordinators_rollout_2.upper
    show_grid: true
    listen:
      Date: ios_coordinators_rollout_2.submission_date
      
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
    explore: ios_coordinators_rollout_2
    listens_to_filters: []
    field: ios_coordinators_rollout_2.submission_date

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
    explore: ios_coordinators_rollout_2
    listens_to_filters: []
    field: ios_coordinators_rollout_2.parameter
  