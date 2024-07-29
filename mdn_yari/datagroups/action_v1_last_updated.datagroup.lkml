# *Do not manually modify this file*

# This file has been generated via https://github.com/mozilla/lookml-generator

# Using a datagroup in an Explore: https://cloud.google.com/looker/docs/reference/param-explore-persist-with
# Using a datagroup in a derived table: https://cloud.google.com/looker/docs/reference/param-view-datagroup-trigger

datagroup: action_v1_last_updated {
  label: "None Last Updated"
  sql_trigger: SELECT MAX(storage_last_modified_time)
    FROM `moz-fx-data-shared-prod`.`region-us`.INFORMATION_SCHEMA.TABLE_STORAGE
    WHERE table_schema = 'mdn_yari_stable'
    AND table_name = 'action_v1' ;;
  description: "Updates when moz-fx-data-shared-prod.mdn_yari_stable.action_v1 is modified."
  max_cache_age: "24 hours"
}