
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/operational_monitoring/views/rollout_doh_beta_rollout_to_all_us_desktop_users_v2_beta_74_80_bug_1613489.view.lkml"

explore: rollout_doh_beta_rollout_to_all_us_desktop_users_v2_beta_74_80_bug_1613489 {
  always_filter: {
    filters: [
      branch: "enabled, disabled",
    ]
  }

  hidden: yes
}