
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

- dashboard: bug_1716693_rollout_doh_canada_rollout_release_91_94
  title: Doh Canada Rollout
  layout: newspaper
  preferred_viewer: dashboards-next

  elements:
  - title: Gc Ms
    name: Gc Ms
    explore: bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram
    type: "looker_line"
    fields: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.submission_date,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.branch,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.high,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.low,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.percentile
    ]
    pivots: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.branch
    ]
    filters:
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.probe: gc_ms
    row: 0
    col: 0
    width: 12
    height: 8
    listen:
      Percentile: bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.percentile: "#ff6a06"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.high: "#ffb380"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.low: "#ffb380"
      
  - title: Memory Total
    name: Memory Total
    explore: bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram
    type: "looker_line"
    fields: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.submission_date,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.branch,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.high,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.low,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.percentile
    ]
    pivots: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.branch
    ]
    filters:
      bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.probe: memory_total
    row: 0
    col: 12
    width: 12
    height: 8
    listen:
      Percentile: bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.percentile: "#ff6a06"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.high: "#ffb380"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_histogram.low: "#ffb380"
      
  - title: Content Crashes
    name: Content Crashes
    explore: bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar
    type: "looker_line"
    fields: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.submission_date,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.branch,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.high,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.low,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile
    ]
    pivots: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.branch
    ]
    filters:
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.probe: content_crashes
    row: 10
    col: 0
    width: 12
    height: 8
    listen:
      Percentile: bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile: "#ff6a06"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.high: "#ffb380"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.low: "#ffb380"
      
  - title: Startup Crashes
    name: Startup Crashes
    explore: bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar
    type: "looker_line"
    fields: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.submission_date,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.branch,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.high,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.low,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile
    ]
    pivots: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.branch
    ]
    filters:
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.probe: startup_crashes
    row: 10
    col: 12
    width: 12
    height: 8
    listen:
      Percentile: bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile: "#ff6a06"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.high: "#ffb380"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.low: "#ffb380"
      
  - title: Shutdown Hangs
    name: Shutdown Hangs
    explore: bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar
    type: "looker_line"
    fields: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.submission_date,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.branch,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.high,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.low,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile
    ]
    pivots: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.branch
    ]
    filters:
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.probe: shutdown_hangs
    row: 20
    col: 0
    width: 12
    height: 8
    listen:
      Percentile: bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile: "#ff6a06"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.high: "#ffb380"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.low: "#ffb380"
      
  - title: Main Crashes
    name: Main Crashes
    explore: bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar
    type: "looker_line"
    fields: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.submission_date,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.branch,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.high,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.low,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile
    ]
    pivots: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.branch
    ]
    filters:
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.probe: main_crashes
    row: 20
    col: 12
    width: 12
    height: 8
    listen:
      Percentile: bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile: "#ff6a06"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.high: "#ffb380"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.low: "#ffb380"
      
  - title: Oom Crashes
    name: Oom Crashes
    explore: bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar
    type: "looker_line"
    fields: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.submission_date,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.branch,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.high,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.low,
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile
    ]
    pivots: [
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.branch
    ]
    filters:
      bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.probe: oom_crashes
    row: 30
    col: 0
    width: 12
    height: 8
    listen:
      Percentile: bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.percentile: "#ff6a06"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.high: "#ffb380"
      active - bug_1716693_rollout_doh_canada_rollout_release_91_94_scalar.low: "#ffb380"
      
  filters:
  - name: Percentile
    title: Percentile
    type: number_filter
    default_value: '50'
    allow_multiple_values: false
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - '10'
      - '20'
      - '30'
      - '40'
      - '50'
      - '60'
      - '70'
      - '80'
      - '90'
      - '95'
      - '99'

  