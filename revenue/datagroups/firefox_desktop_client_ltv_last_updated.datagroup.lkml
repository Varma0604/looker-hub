# *Do not manually modify this file*

# This file has been generated via https://github.com/mozilla/lookml-generator

# Using a datagroup in an Explore: https://cloud.google.com/looker/docs/reference/param-explore-persist-with
# Using a datagroup in a derived table: https://cloud.google.com/looker/docs/reference/param-view-datagroup-trigger

datagroup: firefox_desktop_client_ltv_last_updated {
  label: "Firefox Desktop Client Ltv Last Updated"
  sql_trigger: SELECT MAX(storage_last_modified_time)
    FROM `mozdata`.`region-us`.INFORMATION_SCHEMA.TABLE_STORAGE
    WHERE table_schema = 'ltv'
    AND table_name = 'firefox_desktop_client_ltv' ;;
  description: "Updates when mozdata:ltv.firefox_desktop_client_ltv is modified."
  max_cache_age: "24 hours"
}