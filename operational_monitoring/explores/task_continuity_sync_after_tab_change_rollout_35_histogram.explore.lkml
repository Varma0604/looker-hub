
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/operational_monitoring/views/task_continuity_sync_after_tab_change_rollout_35_histogram.view.lkml"

explore: task_continuity_sync_after_tab_change_rollout_35_histogram {
  always_filter: {
    filters: [
      branch: "enabled, disabled",
    ]
  }
}