
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/operational_monitoring/views/release_ios_set_to_default_instructions_no_x_treatment_b_rolloutv2.view.lkml"

explore: release_ios_set_to_default_instructions_no_x_treatment_b_rolloutv2 {
  always_filter: {
    filters: [
      branch: "enabled, disabled",
    ]
  }

  hidden: yes
}