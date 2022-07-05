
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

- dashboard: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100
  title: Fission
  layout: newspaper
  preferred_viewer: dashboards-next

  elements:
  - title: Perf Page Load Time Ms
    name: Perf Page Load Time Ms
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: perf_page_load_time_ms
    row: 0
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Memory Total
    name: Memory Total
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: memory_total
    row: 0
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Content Frame Time Vsync
    name: Content Frame Time Vsync
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: content_frame_time_vsync
    row: 10
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Content Process Max
    name: Content Process Max
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: content_process_max
    row: 10
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Child Process Launch Ms
    name: Child Process Launch Ms
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: child_process_launch_ms
    row: 20
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Gc Max Pause 2 Content
    name: Gc Max Pause 2 Content
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: gc_max_pause_2_content
    row: 20
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Checkerboard Severity
    name: Checkerboard Severity
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: checkerboard_severity
    row: 30
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Gc Ms Content
    name: Gc Ms Content
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: gc_ms_content
    row: 30
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Cycle Collector Max Pause
    name: Cycle Collector Max Pause
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: cycle_collector_max_pause
    row: 40
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Fx New Window Ms
    name: Fx New Window Ms
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: fx_new_window_ms
    row: 40
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Memory Unique Content Startup
    name: Memory Unique Content Startup
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: memory_unique_content_startup
    row: 50
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Gc Slice During Idle Content
    name: Gc Slice During Idle Content
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: gc_slice_during_idle_content
    row: 50
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Gc Ms
    name: Gc Ms
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: gc_ms
    row: 60
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Gc Max Pause 2
    name: Gc Max Pause 2
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: gc_max_pause_2
    row: 60
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Loaded Tab Count
    name: Loaded Tab Count
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: loaded_tab_count
    row: 70
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Cycle Collector Max Pause Content
    name: Cycle Collector Max Pause Content
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: cycle_collector_max_pause_content
    row: 70
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Content Process Count
    name: Content Process Count
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: content_process_count
    row: 80
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Fx Tab Switch Composite E10S Ms
    name: Fx Tab Switch Composite E10S Ms
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: fx_tab_switch_composite_e10s_ms
    row: 80
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Perf First Contentful Paint Ms
    name: Perf First Contentful Paint Ms
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: perf_first_contentful_paint_ms
    row: 90
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Gc Slice During Idle
    name: Gc Slice During Idle
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: gc_slice_during_idle
    row: 90
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Time To First Interaction Ms
    name: Time To First Interaction Ms
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: time_to_first_interaction_ms
    row: 100
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Keypress Present Latency Ms
    name: Keypress Present Latency Ms
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.probe: keypress_present_latency_ms
    row: 100
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_histogram.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Active Ticks
    name: Active Ticks
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: active_ticks
    row: 110
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Content Shutdown Crashes
    name: Content Shutdown Crashes
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: content_shutdown_crashes
    row: 110
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Oom Crashes
    name: Oom Crashes
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: oom_crashes
    row: 120
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Shutdown Hangs
    name: Shutdown Hangs
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: shutdown_hangs
    row: 120
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Uri Count
    name: Uri Count
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: uri_count
    row: 130
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Gmplugin Crashes
    name: Gmplugin Crashes
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: gmplugin_crashes
    row: 130
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Subsession Length
    name: Subsession Length
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: subsession_length
    row: 140
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Content Crashes
    name: Content Crashes
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: content_crashes
    row: 140
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Gpu Crashes
    name: Gpu Crashes
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: gpu_crashes
    row: 150
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Plugin Crashes
    name: Plugin Crashes
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: plugin_crashes
    row: 150
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Main Crashes
    name: Main Crashes
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: main_crashes
    row: 160
    col: 0
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Startup Crashes
    name: Startup Crashes
    explore: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar
    type: "ci-line-chart"
    fields: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low,
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    ]
    pivots: [
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.branch
    ]
    filters:
      bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.probe: startup_crashes
    row: 160
    col: 12
    width: 12
    height: 8
    field_x: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.build_id
    field_y: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile
    log_scale: false
    ci_lower: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.low
    ci_upper: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.high
    show_grid: true
    listen:
      Percentile: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.percentile_conf
      Cores Count: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.cores_count
      Os: bug_1660366_pref_ongoing_fission_nightly_experiment_nightly_83_100_scalar.os
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  
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

  
  - title: Cores Count
    name: Cores Count
    type: string_filter
    default_value: 'Windows'
    allow_multiple_values: false
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - 'Windows'
      - '4'
      - '2'
      - '6'
      - '8'
      - 'Mac'
      - 'Linux'
      - '12'
      - '10'
      - '1'
      
  
  
  - title: Os
    name: Os
    type: string_filter
    default_value: 'Windows'
    allow_multiple_values: false
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - 'Windows'
      - '4'
      - '2'
      - '6'
      - '8'
      - 'Mac'
      - 'Linux'
      - '12'
      - '10'
      - '16'
      
  
  