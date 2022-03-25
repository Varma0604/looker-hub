
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

- dashboard: win32k_lockdown_experiment
  title: Win32K Lockdown Experiment
  layout: newspaper
  preferred_viewer: dashboards-next

  elements:
  - title: Content Process Count
    name: Content Process Count
    explore: win32k_lockdown_experiment_histogram
    type: "looker_line"
    fields: [
      win32k_lockdown_experiment_histogram.submission_date,
      win32k_lockdown_experiment_histogram.branch,
      win32k_lockdown_experiment_histogram.high,
      win32k_lockdown_experiment_histogram.low,
      win32k_lockdown_experiment_histogram.percentile
    ]
    pivots: [win32k_lockdown_experiment_histogram.branch]
    filters:
      win32k_lockdown_experiment_histogram.probe: CONTENT_PROCESS_COUNT
    row: 0
    col: 0
    width: 12
    height: 8
    listen:
      Percentile: win32k_lockdown_experiment_histogram.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      enabled - win32k_lockdown_experiment_histogram.percentile: "#ff6a06"
      enabled - win32k_lockdown_experiment_histogram.high: "#ffb380"
      enabled - win32k_lockdown_experiment_histogram.low: "#ffb380"
      disabled - win32k_lockdown_experiment_histogram.percentile: "blue"
      disabled - win32k_lockdown_experiment_histogram.high: "#8cd3ff"
      disabled - win32k_lockdown_experiment_histogram.low: "#8cd3ff"
      
  - title: Oom Crashes
    name: Oom Crashes
    explore: win32k_lockdown_experiment_scalar
    type: "looker_line"
    fields: [
      win32k_lockdown_experiment_scalar.submission_date,
      win32k_lockdown_experiment_scalar.branch,
      win32k_lockdown_experiment_scalar.high,
      win32k_lockdown_experiment_scalar.low,
      win32k_lockdown_experiment_scalar.percentile
    ]
    pivots: [win32k_lockdown_experiment_scalar.branch]
    filters:
      win32k_lockdown_experiment_scalar.probe: OOM_CRASHES
    row: 0
    col: 12
    width: 12
    height: 8
    listen:
      Percentile: win32k_lockdown_experiment_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      enabled - win32k_lockdown_experiment_scalar.percentile: "#ff6a06"
      enabled - win32k_lockdown_experiment_scalar.high: "#ffb380"
      enabled - win32k_lockdown_experiment_scalar.low: "#ffb380"
      disabled - win32k_lockdown_experiment_scalar.percentile: "blue"
      disabled - win32k_lockdown_experiment_scalar.high: "#8cd3ff"
      disabled - win32k_lockdown_experiment_scalar.low: "#8cd3ff"
      
  - title: Content Shutdown Crashes
    name: Content Shutdown Crashes
    explore: win32k_lockdown_experiment_scalar
    type: "looker_line"
    fields: [
      win32k_lockdown_experiment_scalar.submission_date,
      win32k_lockdown_experiment_scalar.branch,
      win32k_lockdown_experiment_scalar.high,
      win32k_lockdown_experiment_scalar.low,
      win32k_lockdown_experiment_scalar.percentile
    ]
    pivots: [win32k_lockdown_experiment_scalar.branch]
    filters:
      win32k_lockdown_experiment_scalar.probe: CONTENT_SHUTDOWN_CRASHES
    row: 10
    col: 0
    width: 12
    height: 8
    listen:
      Percentile: win32k_lockdown_experiment_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      enabled - win32k_lockdown_experiment_scalar.percentile: "#ff6a06"
      enabled - win32k_lockdown_experiment_scalar.high: "#ffb380"
      enabled - win32k_lockdown_experiment_scalar.low: "#ffb380"
      disabled - win32k_lockdown_experiment_scalar.percentile: "blue"
      disabled - win32k_lockdown_experiment_scalar.high: "#8cd3ff"
      disabled - win32k_lockdown_experiment_scalar.low: "#8cd3ff"
      
  - title: Plugin Crashes
    name: Plugin Crashes
    explore: win32k_lockdown_experiment_scalar
    type: "looker_line"
    fields: [
      win32k_lockdown_experiment_scalar.submission_date,
      win32k_lockdown_experiment_scalar.branch,
      win32k_lockdown_experiment_scalar.high,
      win32k_lockdown_experiment_scalar.low,
      win32k_lockdown_experiment_scalar.percentile
    ]
    pivots: [win32k_lockdown_experiment_scalar.branch]
    filters:
      win32k_lockdown_experiment_scalar.probe: PLUGIN_CRASHES
    row: 10
    col: 12
    width: 12
    height: 8
    listen:
      Percentile: win32k_lockdown_experiment_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      enabled - win32k_lockdown_experiment_scalar.percentile: "#ff6a06"
      enabled - win32k_lockdown_experiment_scalar.high: "#ffb380"
      enabled - win32k_lockdown_experiment_scalar.low: "#ffb380"
      disabled - win32k_lockdown_experiment_scalar.percentile: "blue"
      disabled - win32k_lockdown_experiment_scalar.high: "#8cd3ff"
      disabled - win32k_lockdown_experiment_scalar.low: "#8cd3ff"
      
  - title: Content Crashes
    name: Content Crashes
    explore: win32k_lockdown_experiment_scalar
    type: "looker_line"
    fields: [
      win32k_lockdown_experiment_scalar.submission_date,
      win32k_lockdown_experiment_scalar.branch,
      win32k_lockdown_experiment_scalar.high,
      win32k_lockdown_experiment_scalar.low,
      win32k_lockdown_experiment_scalar.percentile
    ]
    pivots: [win32k_lockdown_experiment_scalar.branch]
    filters:
      win32k_lockdown_experiment_scalar.probe: CONTENT_CRASHES
    row: 20
    col: 0
    width: 12
    height: 8
    listen:
      Percentile: win32k_lockdown_experiment_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      enabled - win32k_lockdown_experiment_scalar.percentile: "#ff6a06"
      enabled - win32k_lockdown_experiment_scalar.high: "#ffb380"
      enabled - win32k_lockdown_experiment_scalar.low: "#ffb380"
      disabled - win32k_lockdown_experiment_scalar.percentile: "blue"
      disabled - win32k_lockdown_experiment_scalar.high: "#8cd3ff"
      disabled - win32k_lockdown_experiment_scalar.low: "#8cd3ff"
      
  - title: Shutdown Hangs
    name: Shutdown Hangs
    explore: win32k_lockdown_experiment_scalar
    type: "looker_line"
    fields: [
      win32k_lockdown_experiment_scalar.submission_date,
      win32k_lockdown_experiment_scalar.branch,
      win32k_lockdown_experiment_scalar.high,
      win32k_lockdown_experiment_scalar.low,
      win32k_lockdown_experiment_scalar.percentile
    ]
    pivots: [win32k_lockdown_experiment_scalar.branch]
    filters:
      win32k_lockdown_experiment_scalar.probe: SHUTDOWN_HANGS
    row: 20
    col: 12
    width: 12
    height: 8
    listen:
      Percentile: win32k_lockdown_experiment_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      enabled - win32k_lockdown_experiment_scalar.percentile: "#ff6a06"
      enabled - win32k_lockdown_experiment_scalar.high: "#ffb380"
      enabled - win32k_lockdown_experiment_scalar.low: "#ffb380"
      disabled - win32k_lockdown_experiment_scalar.percentile: "blue"
      disabled - win32k_lockdown_experiment_scalar.high: "#8cd3ff"
      disabled - win32k_lockdown_experiment_scalar.low: "#8cd3ff"
      
  - title: Gmplugin Crashes
    name: Gmplugin Crashes
    explore: win32k_lockdown_experiment_scalar
    type: "looker_line"
    fields: [
      win32k_lockdown_experiment_scalar.submission_date,
      win32k_lockdown_experiment_scalar.branch,
      win32k_lockdown_experiment_scalar.high,
      win32k_lockdown_experiment_scalar.low,
      win32k_lockdown_experiment_scalar.percentile
    ]
    pivots: [win32k_lockdown_experiment_scalar.branch]
    filters:
      win32k_lockdown_experiment_scalar.probe: GMPLUGIN_CRASHES
    row: 30
    col: 0
    width: 12
    height: 8
    listen:
      Percentile: win32k_lockdown_experiment_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      enabled - win32k_lockdown_experiment_scalar.percentile: "#ff6a06"
      enabled - win32k_lockdown_experiment_scalar.high: "#ffb380"
      enabled - win32k_lockdown_experiment_scalar.low: "#ffb380"
      disabled - win32k_lockdown_experiment_scalar.percentile: "blue"
      disabled - win32k_lockdown_experiment_scalar.high: "#8cd3ff"
      disabled - win32k_lockdown_experiment_scalar.low: "#8cd3ff"
      
  - title: Main Crashes
    name: Main Crashes
    explore: win32k_lockdown_experiment_scalar
    type: "looker_line"
    fields: [
      win32k_lockdown_experiment_scalar.submission_date,
      win32k_lockdown_experiment_scalar.branch,
      win32k_lockdown_experiment_scalar.high,
      win32k_lockdown_experiment_scalar.low,
      win32k_lockdown_experiment_scalar.percentile
    ]
    pivots: [win32k_lockdown_experiment_scalar.branch]
    filters:
      win32k_lockdown_experiment_scalar.probe: MAIN_CRASHES
    row: 30
    col: 12
    width: 12
    height: 8
    listen:
      Percentile: win32k_lockdown_experiment_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      enabled - win32k_lockdown_experiment_scalar.percentile: "#ff6a06"
      enabled - win32k_lockdown_experiment_scalar.high: "#ffb380"
      enabled - win32k_lockdown_experiment_scalar.low: "#ffb380"
      disabled - win32k_lockdown_experiment_scalar.percentile: "blue"
      disabled - win32k_lockdown_experiment_scalar.high: "#8cd3ff"
      disabled - win32k_lockdown_experiment_scalar.low: "#8cd3ff"
      
  - title: Gpu Crashes
    name: Gpu Crashes
    explore: win32k_lockdown_experiment_scalar
    type: "looker_line"
    fields: [
      win32k_lockdown_experiment_scalar.submission_date,
      win32k_lockdown_experiment_scalar.branch,
      win32k_lockdown_experiment_scalar.high,
      win32k_lockdown_experiment_scalar.low,
      win32k_lockdown_experiment_scalar.percentile
    ]
    pivots: [win32k_lockdown_experiment_scalar.branch]
    filters:
      win32k_lockdown_experiment_scalar.probe: GPU_CRASHES
    row: 40
    col: 0
    width: 12
    height: 8
    listen:
      Percentile: win32k_lockdown_experiment_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      enabled - win32k_lockdown_experiment_scalar.percentile: "#ff6a06"
      enabled - win32k_lockdown_experiment_scalar.high: "#ffb380"
      enabled - win32k_lockdown_experiment_scalar.low: "#ffb380"
      disabled - win32k_lockdown_experiment_scalar.percentile: "blue"
      disabled - win32k_lockdown_experiment_scalar.high: "#8cd3ff"
      disabled - win32k_lockdown_experiment_scalar.low: "#8cd3ff"
      
  - title: Startup Crashes
    name: Startup Crashes
    explore: win32k_lockdown_experiment_scalar
    type: "looker_line"
    fields: [
      win32k_lockdown_experiment_scalar.submission_date,
      win32k_lockdown_experiment_scalar.branch,
      win32k_lockdown_experiment_scalar.high,
      win32k_lockdown_experiment_scalar.low,
      win32k_lockdown_experiment_scalar.percentile
    ]
    pivots: [win32k_lockdown_experiment_scalar.branch]
    filters:
      win32k_lockdown_experiment_scalar.probe: STARTUP_CRASHES
    row: 40
    col: 12
    width: 12
    height: 8
    listen:
      Percentile: win32k_lockdown_experiment_scalar.percentile_conf
    y_axes: [{type: log}]
    series_colors:
      enabled - win32k_lockdown_experiment_scalar.percentile: "#ff6a06"
      enabled - win32k_lockdown_experiment_scalar.high: "#ffb380"
      enabled - win32k_lockdown_experiment_scalar.low: "#ffb380"
      disabled - win32k_lockdown_experiment_scalar.percentile: "blue"
      disabled - win32k_lockdown_experiment_scalar.high: "#8cd3ff"
      disabled - win32k_lockdown_experiment_scalar.low: "#8cd3ff"
      
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

  