
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/operational_monitoring/views/bug_1725376_rollout_https_rr_rollout_release_91_91_scalar.view.lkml"

explore: bug_1725376_rollout_https_rr_rollout_release_91_91_scalar {
  always_filter: {
    filters: [
      branch: "active",
    ]
  }
}