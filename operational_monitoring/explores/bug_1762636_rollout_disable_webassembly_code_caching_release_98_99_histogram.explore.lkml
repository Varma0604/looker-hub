
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/operational_monitoring/views/bug_1762636_rollout_disable_webassembly_code_caching_release_98_99_histogram.view.lkml"

explore: bug_1762636_rollout_disable_webassembly_code_caching_release_98_99_histogram {
  always_filter: {
    filters: [
      branch: "enabled, disabled",
    ]
  }
}