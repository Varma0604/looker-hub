
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/operational_monitoring/views/bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.view.lkml"

explore: bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar {
  always_filter: {
    filters: [
      branch: "active",
    ]
  }

  aggregate_table: rollup_content_crashes {
    query: {
      dimensions: [submission_date, branch]
      measures: [low, high, percentile]
      filters: [
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.branch: "active",
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.percentile_conf: "50",
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.probe: "content_crashes",
      ]
    }

    materialization: {
      sql_trigger_value: SELECT CAST(TIMESTAMP_SUB(CURRENT_TIMESTAMP, INTERVAL 9 HOUR) AS DATE) ;;
    }
  }

  aggregate_table: rollup_startup_crashes {
    query: {
      dimensions: [submission_date, branch]
      measures: [low, high, percentile]
      filters: [
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.branch: "active",
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.percentile_conf: "50",
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.probe: "startup_crashes",
      ]
    }

    materialization: {
      sql_trigger_value: SELECT CAST(TIMESTAMP_SUB(CURRENT_TIMESTAMP, INTERVAL 9 HOUR) AS DATE) ;;
    }
  }

  aggregate_table: rollup_shutdown_hangs {
    query: {
      dimensions: [submission_date, branch]
      measures: [low, high, percentile]
      filters: [
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.branch: "active",
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.percentile_conf: "50",
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.probe: "shutdown_hangs",
      ]
    }

    materialization: {
      sql_trigger_value: SELECT CAST(TIMESTAMP_SUB(CURRENT_TIMESTAMP, INTERVAL 9 HOUR) AS DATE) ;;
    }
  }

  aggregate_table: rollup_main_crashes {
    query: {
      dimensions: [submission_date, branch]
      measures: [low, high, percentile]
      filters: [
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.branch: "active",
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.percentile_conf: "50",
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.probe: "main_crashes",
      ]
    }

    materialization: {
      sql_trigger_value: SELECT CAST(TIMESTAMP_SUB(CURRENT_TIMESTAMP, INTERVAL 9 HOUR) AS DATE) ;;
    }
  }

  aggregate_table: rollup_oom_crashes {
    query: {
      dimensions: [submission_date, branch]
      measures: [low, high, percentile]
      filters: [
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.branch: "active",
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.percentile_conf: "50",
        bug_1750257_rollout_pref_off_networkcookiesamesiteschemeful_in_release_96_96_scalar.probe: "oom_crashes",
      ]
    }

    materialization: {
      sql_trigger_value: SELECT CAST(TIMESTAMP_SUB(CURRENT_TIMESTAMP, INTERVAL 9 HOUR) AS DATE) ;;
    }
  }
}