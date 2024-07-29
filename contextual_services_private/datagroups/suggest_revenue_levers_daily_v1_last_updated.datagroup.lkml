# *Do not manually modify this file*

# This file has been generated via https://github.com/mozilla/lookml-generator

# Using a datagroup in an Explore: https://cloud.google.com/looker/docs/reference/param-explore-persist-with
# Using a datagroup in a derived table: https://cloud.google.com/looker/docs/reference/param-view-datagroup-trigger

datagroup: suggest_revenue_levers_daily_v1_last_updated {
  label: "Suggest Revenue Levers Daily Last Updated"
  sql_trigger: SELECT MAX(storage_last_modified_time)
    FROM `moz-fx-data-shared-prod`.`region-us`.INFORMATION_SCHEMA.TABLE_STORAGE
    WHERE table_schema = 'contextual_services_derived'
    AND table_name = 'suggest_revenue_levers_daily_v1' ;;
  description: "Updates when moz-fx-data-shared-prod.contextual_services_derived.suggest_revenue_levers_daily_v1 is modified."
  max_cache_age: "24 hours"
}