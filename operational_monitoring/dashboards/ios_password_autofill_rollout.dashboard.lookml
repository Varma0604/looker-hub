
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

- dashboard: ios_password_autofill_rollout
  title: Ios Password Autofill Rollout
  layout: newspaper
  preferred_viewer: dashboards-next

  elements:
  - title: Ad Clicks
    name: Ad Clicks_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: ios_password_autofill_rollout
    type: looker_line
    fields: [
      ios_password_autofill_rollout.submission_date,
      ios_password_autofill_rollout.branch,
      ios_password_autofill_rollout.point
    ]
    pivots: [
      ios_password_autofill_rollout.branch
    ]
    filters:
      ios_password_autofill_rollout.metric: 'ad_clicks'
      ios_password_autofill_rollout.statistic: mean
    row: 0
    col: 0
    width: 12
    height: 8
    field_x: ios_password_autofill_rollout.submission_date
    field_y: ios_password_autofill_rollout.point
    log_scale: false
    ci_lower: ios_password_autofill_rollout.lower
    ci_upper: ios_password_autofill_rollout.upper
    show_grid: true
    listen:
      Date: ios_password_autofill_rollout.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Active Hours
    name: Active Hours_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: ios_password_autofill_rollout
    type: looker_line
    fields: [
      ios_password_autofill_rollout.submission_date,
      ios_password_autofill_rollout.branch,
      ios_password_autofill_rollout.point
    ]
    pivots: [
      ios_password_autofill_rollout.branch
    ]
    filters:
      ios_password_autofill_rollout.metric: 'active_hours'
      ios_password_autofill_rollout.statistic: mean
    row: 0
    col: 12
    width: 12
    height: 8
    field_x: ios_password_autofill_rollout.submission_date
    field_y: ios_password_autofill_rollout.point
    log_scale: false
    ci_lower: ios_password_autofill_rollout.lower
    ci_upper: ios_password_autofill_rollout.upper
    show_grid: true
    listen:
      Date: ios_password_autofill_rollout.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Days Of Use
    name: Days Of Use_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: ios_password_autofill_rollout
    type: looker_line
    fields: [
      ios_password_autofill_rollout.submission_date,
      ios_password_autofill_rollout.branch,
      ios_password_autofill_rollout.point
    ]
    pivots: [
      ios_password_autofill_rollout.branch
    ]
    filters:
      ios_password_autofill_rollout.metric: 'days_of_use'
      ios_password_autofill_rollout.statistic: mean
    row: 10
    col: 0
    width: 12
    height: 8
    field_x: ios_password_autofill_rollout.submission_date
    field_y: ios_password_autofill_rollout.point
    log_scale: false
    ci_lower: ios_password_autofill_rollout.lower
    ci_upper: ios_password_autofill_rollout.upper
    show_grid: true
    listen:
      Date: ios_password_autofill_rollout.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Retained
    name: Retained_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: ios_password_autofill_rollout
    type: looker_line
    fields: [
      ios_password_autofill_rollout.submission_date,
      ios_password_autofill_rollout.branch,
      ios_password_autofill_rollout.point
    ]
    pivots: [
      ios_password_autofill_rollout.branch
    ]
    filters:
      ios_password_autofill_rollout.metric: 'retained'
      ios_password_autofill_rollout.statistic: mean
    row: 10
    col: 12
    width: 12
    height: 8
    field_x: ios_password_autofill_rollout.submission_date
    field_y: ios_password_autofill_rollout.point
    log_scale: false
    ci_lower: ios_password_autofill_rollout.lower
    ci_upper: ios_password_autofill_rollout.upper
    show_grid: true
    listen:
      Date: ios_password_autofill_rollout.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Search Count
    name: Search Count_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: ios_password_autofill_rollout
    type: looker_line
    fields: [
      ios_password_autofill_rollout.submission_date,
      ios_password_autofill_rollout.branch,
      ios_password_autofill_rollout.point
    ]
    pivots: [
      ios_password_autofill_rollout.branch
    ]
    filters:
      ios_password_autofill_rollout.metric: 'search_count'
      ios_password_autofill_rollout.statistic: mean
    row: 20
    col: 0
    width: 12
    height: 8
    field_x: ios_password_autofill_rollout.submission_date
    field_y: ios_password_autofill_rollout.point
    log_scale: false
    ci_lower: ios_password_autofill_rollout.lower
    ci_upper: ios_password_autofill_rollout.upper
    show_grid: true
    listen:
      Date: ios_password_autofill_rollout.submission_date
      
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
    explore: ios_password_autofill_rollout
    listens_to_filters: []
    field: ios_password_autofill_rollout.submission_date

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
    explore: ios_password_autofill_rollout
    listens_to_filters: []
    field: ios_password_autofill_rollout.parameter
  