
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/operational_monitoring/views/rally_first_prompt_for_users_without_an_enrolled_study_2nd_stage_rollout.view.lkml"

explore: rally_first_prompt_for_users_without_an_enrolled_study_2nd_stage_rollout {
  always_filter: {
    filters: [
      branch: "enabled, disabled",
    ]
  }

  hidden: yes
}