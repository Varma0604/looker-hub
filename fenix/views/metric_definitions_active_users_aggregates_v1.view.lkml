
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_active_users_aggregates_v1 {
  derived_table: {
    sql: SELECT
                SUM(dau) AS daily_active_users_v2,

                looker_base_fields_client_info__android_sdk_version,
looker_base_fields_client_info__app_build,
looker_base_fields_client_info__app_channel,
looker_base_fields_client_info__app_display_version,
looker_base_fields_client_info__architecture,
looker_base_fields_client_info__build_date,
looker_base_fields_client_info__device_manufacturer,
looker_base_fields_client_info__device_model,
looker_base_fields_client_info__first_run_date,
looker_base_fields_client_info__locale,
looker_base_fields_client_info__os,
looker_base_fields_client_info__os_version,
looker_base_fields_client_info__session_count,
looker_base_fields_client_info__session_id,
looker_base_fields_client_info__telemetry_sdk_build,
looker_base_fields_client_info__windows_build_number,
looker_base_fields_metadata__geo__city,
looker_base_fields_metadata__geo__country,
looker_base_fields_metadata__geo__db_version,
looker_base_fields_metadata__geo__subdivision1,
looker_base_fields_metadata__geo__subdivision2,
looker_base_fields_metadata__header__date,
looker_base_fields_metadata__header__dnt,
looker_base_fields_metadata__header__parsed_x_lb_tags__tls_cipher_hex,
looker_base_fields_metadata__header__parsed_x_lb_tags__tls_version,
looker_base_fields_metadata__header__x_debug_id,
looker_base_fields_metadata__header__x_foxsec_ip_reputation,
looker_base_fields_metadata__header__x_lb_tags,
looker_base_fields_metadata__header__x_pingsender_version,
looker_base_fields_metadata__header__x_source_tags,
looker_base_fields_metadata__header__x_telemetry_agent,
looker_base_fields_metadata__isp__db_version,
looker_base_fields_metadata__isp__name,
looker_base_fields_metadata__isp__organization,
looker_base_fields_metadata__user_agent__browser,
looker_base_fields_metadata__user_agent__os,
looker_base_fields_metadata__user_agent__version,
looker_base_fields_normalized_app_id,
looker_base_fields_normalized_app_name,
looker_base_fields_normalized_channel,
looker_base_fields_normalized_country_code,
looker_base_fields_normalized_os,
looker_base_fields_normalized_os_version,
looker_base_fields_sample_id,
active_users_aggregates_v1_active_hours,
active_users_aggregates_v1_adjust_network,
active_users_aggregates_v1_app_name,
active_users_aggregates_v1_app_version,
active_users_aggregates_v1_app_version_is_major_release,
active_users_aggregates_v1_app_version_major,
active_users_aggregates_v1_app_version_minor,
active_users_aggregates_v1_app_version_patch_revision,
active_users_aggregates_v1_attributed,
active_users_aggregates_v1_attribution_medium,
active_users_aggregates_v1_attribution_source,
active_users_aggregates_v1_channel,
active_users_aggregates_v1_city,
active_users_aggregates_v1_country,
active_users_aggregates_v1_dau,
active_users_aggregates_v1_distribution_id,
active_users_aggregates_v1_first_seen_year,
active_users_aggregates_v1_install_source,
active_users_aggregates_v1_is_default_browser,
active_users_aggregates_v1_language_name,
active_users_aggregates_v1_mau,
active_users_aggregates_v1_new_profiles,
active_users_aggregates_v1_os,
active_users_aggregates_v1_os_grouped,
active_users_aggregates_v1_os_version,
active_users_aggregates_v1_os_version_major,
active_users_aggregates_v1_os_version_minor,
active_users_aggregates_v1_segment,
active_users_aggregates_v1_uri_count,
active_users_aggregates_v1_wau,

                NULL AS client_id,
                {% if aggregate_metrics_by._parameter_value == 'day' %}
                submission_date AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'week'  %}
                (FORMAT_DATE(
                    '%F',
                    DATE_TRUNC(submission_date,
                    WEEK(MONDAY)))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'month'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    submission_date)
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'quarter'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    DATE_TRUNC(submission_date,
                    QUARTER))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'year'  %}
                (EXTRACT(
                    YEAR FROM submission_date)
                ) AS analysis_basis
                {% else %}
                NULL as analysis_basis
                {% endif %}
            FROM
                (
                    SELECT
                        active_users_aggregates_v1.*,
                        looker_base_fields.client_info.android_sdk_version AS looker_base_fields_client_info__android_sdk_version,
looker_base_fields.client_info.app_build AS looker_base_fields_client_info__app_build,
looker_base_fields.client_info.app_channel AS looker_base_fields_client_info__app_channel,
looker_base_fields.client_info.app_display_version AS looker_base_fields_client_info__app_display_version,
looker_base_fields.client_info.architecture AS looker_base_fields_client_info__architecture,
looker_base_fields.client_info.build_date AS looker_base_fields_client_info__build_date,
looker_base_fields.client_info.device_manufacturer AS looker_base_fields_client_info__device_manufacturer,
looker_base_fields.client_info.device_model AS looker_base_fields_client_info__device_model,
looker_base_fields.client_info.first_run_date AS looker_base_fields_client_info__first_run_date,
looker_base_fields.client_info.locale AS looker_base_fields_client_info__locale,
looker_base_fields.client_info.os AS looker_base_fields_client_info__os,
looker_base_fields.client_info.os_version AS looker_base_fields_client_info__os_version,
looker_base_fields.client_info.session_count AS looker_base_fields_client_info__session_count,
looker_base_fields.client_info.session_id AS looker_base_fields_client_info__session_id,
looker_base_fields.client_info.telemetry_sdk_build AS looker_base_fields_client_info__telemetry_sdk_build,
looker_base_fields.client_info.windows_build_number AS looker_base_fields_client_info__windows_build_number,
looker_base_fields.metadata.geo.city AS looker_base_fields_metadata__geo__city,
looker_base_fields.metadata.geo.country AS looker_base_fields_metadata__geo__country,
looker_base_fields.metadata.geo.db_version AS looker_base_fields_metadata__geo__db_version,
looker_base_fields.metadata.geo.subdivision1 AS looker_base_fields_metadata__geo__subdivision1,
looker_base_fields.metadata.geo.subdivision2 AS looker_base_fields_metadata__geo__subdivision2,
looker_base_fields.metadata.header.date AS looker_base_fields_metadata__header__date,
looker_base_fields.metadata.header.dnt AS looker_base_fields_metadata__header__dnt,
looker_base_fields.metadata.header.parsed_x_lb_tags.tls_cipher_hex AS looker_base_fields_metadata__header__parsed_x_lb_tags__tls_cipher_hex,
looker_base_fields.metadata.header.parsed_x_lb_tags.tls_version AS looker_base_fields_metadata__header__parsed_x_lb_tags__tls_version,
looker_base_fields.metadata.header.x_debug_id AS looker_base_fields_metadata__header__x_debug_id,
looker_base_fields.metadata.header.x_foxsec_ip_reputation AS looker_base_fields_metadata__header__x_foxsec_ip_reputation,
looker_base_fields.metadata.header.x_lb_tags AS looker_base_fields_metadata__header__x_lb_tags,
looker_base_fields.metadata.header.x_pingsender_version AS looker_base_fields_metadata__header__x_pingsender_version,
looker_base_fields.metadata.header.x_source_tags AS looker_base_fields_metadata__header__x_source_tags,
looker_base_fields.metadata.header.x_telemetry_agent AS looker_base_fields_metadata__header__x_telemetry_agent,
looker_base_fields.metadata.isp.db_version AS looker_base_fields_metadata__isp__db_version,
looker_base_fields.metadata.isp.name AS looker_base_fields_metadata__isp__name,
looker_base_fields.metadata.isp.organization AS looker_base_fields_metadata__isp__organization,
looker_base_fields.metadata.user_agent.browser AS looker_base_fields_metadata__user_agent__browser,
looker_base_fields.metadata.user_agent.os AS looker_base_fields_metadata__user_agent__os,
looker_base_fields.metadata.user_agent.version AS looker_base_fields_metadata__user_agent__version,
looker_base_fields.normalized_app_id AS looker_base_fields_normalized_app_id,
looker_base_fields.normalized_app_name AS looker_base_fields_normalized_app_name,
looker_base_fields.normalized_channel AS looker_base_fields_normalized_channel,
looker_base_fields.normalized_country_code AS looker_base_fields_normalized_country_code,
looker_base_fields.normalized_os AS looker_base_fields_normalized_os,
looker_base_fields.normalized_os_version AS looker_base_fields_normalized_os_version,
looker_base_fields.sample_id AS looker_base_fields_sample_id,
active_users_aggregates_v1.active_hours AS active_users_aggregates_v1_active_hours,
active_users_aggregates_v1.adjust_network AS active_users_aggregates_v1_adjust_network,
active_users_aggregates_v1.app_name AS active_users_aggregates_v1_app_name,
active_users_aggregates_v1.app_version AS active_users_aggregates_v1_app_version,
active_users_aggregates_v1.app_version_is_major_release AS active_users_aggregates_v1_app_version_is_major_release,
active_users_aggregates_v1.app_version_major AS active_users_aggregates_v1_app_version_major,
active_users_aggregates_v1.app_version_minor AS active_users_aggregates_v1_app_version_minor,
active_users_aggregates_v1.app_version_patch_revision AS active_users_aggregates_v1_app_version_patch_revision,
active_users_aggregates_v1.attributed AS active_users_aggregates_v1_attributed,
active_users_aggregates_v1.attribution_medium AS active_users_aggregates_v1_attribution_medium,
active_users_aggregates_v1.attribution_source AS active_users_aggregates_v1_attribution_source,
active_users_aggregates_v1.channel AS active_users_aggregates_v1_channel,
active_users_aggregates_v1.city AS active_users_aggregates_v1_city,
active_users_aggregates_v1.country AS active_users_aggregates_v1_country,
active_users_aggregates_v1.dau AS active_users_aggregates_v1_dau,
active_users_aggregates_v1.distribution_id AS active_users_aggregates_v1_distribution_id,
active_users_aggregates_v1.first_seen_year AS active_users_aggregates_v1_first_seen_year,
active_users_aggregates_v1.install_source AS active_users_aggregates_v1_install_source,
active_users_aggregates_v1.is_default_browser AS active_users_aggregates_v1_is_default_browser,
active_users_aggregates_v1.language_name AS active_users_aggregates_v1_language_name,
active_users_aggregates_v1.mau AS active_users_aggregates_v1_mau,
active_users_aggregates_v1.new_profiles AS active_users_aggregates_v1_new_profiles,
active_users_aggregates_v1.os AS active_users_aggregates_v1_os,
active_users_aggregates_v1.os_grouped AS active_users_aggregates_v1_os_grouped,
active_users_aggregates_v1.os_version AS active_users_aggregates_v1_os_version,
active_users_aggregates_v1.os_version_major AS active_users_aggregates_v1_os_version_major,
active_users_aggregates_v1.os_version_minor AS active_users_aggregates_v1_os_version_minor,
active_users_aggregates_v1.segment AS active_users_aggregates_v1_segment,
active_users_aggregates_v1.uri_count AS active_users_aggregates_v1_uri_count,
active_users_aggregates_v1.wau AS active_users_aggregates_v1_wau,

                    FROM
                    (
            SELECT
                *
            FROM
                (
    SELECT *
     FROM `moz-fx-data-shared-prod.telemetry.active_users_aggregates`
    WHERE app_name = 'Fenix'
)
            ) AS active_users_aggregates_v1
        
                    WHERE 
                    active_users_aggregates_v1.submission_date
                    BETWEEN
                    COALESCE(
                        SAFE_CAST(
                            {% date_start submission_date %} AS DATE
                        ), CURRENT_DATE()) AND
                    COALESCE(
                        SAFE_CAST(
                            {% date_end submission_date %} AS DATE
                        ), CURRENT_DATE())
                 AND 
                    looker_base_fields.submission_date
                    BETWEEN
                    COALESCE(
                        SAFE_CAST(
                            {% date_start submission_date %} AS DATE
                        ), CURRENT_DATE()) AND
                    COALESCE(
                        SAFE_CAST(
                            {% date_end submission_date %} AS DATE
                        ), CURRENT_DATE())
                
                    AND
                        looker_base_fields.sample_id < {% parameter sampling %}
                
                )
            GROUP BY
                looker_base_fields_client_info__android_sdk_version,
looker_base_fields_client_info__app_build,
looker_base_fields_client_info__app_channel,
looker_base_fields_client_info__app_display_version,
looker_base_fields_client_info__architecture,
looker_base_fields_client_info__build_date,
looker_base_fields_client_info__device_manufacturer,
looker_base_fields_client_info__device_model,
looker_base_fields_client_info__first_run_date,
looker_base_fields_client_info__locale,
looker_base_fields_client_info__os,
looker_base_fields_client_info__os_version,
looker_base_fields_client_info__session_count,
looker_base_fields_client_info__session_id,
looker_base_fields_client_info__telemetry_sdk_build,
looker_base_fields_client_info__windows_build_number,
looker_base_fields_metadata__geo__city,
looker_base_fields_metadata__geo__country,
looker_base_fields_metadata__geo__db_version,
looker_base_fields_metadata__geo__subdivision1,
looker_base_fields_metadata__geo__subdivision2,
looker_base_fields_metadata__header__date,
looker_base_fields_metadata__header__dnt,
looker_base_fields_metadata__header__parsed_x_lb_tags__tls_cipher_hex,
looker_base_fields_metadata__header__parsed_x_lb_tags__tls_version,
looker_base_fields_metadata__header__x_debug_id,
looker_base_fields_metadata__header__x_foxsec_ip_reputation,
looker_base_fields_metadata__header__x_lb_tags,
looker_base_fields_metadata__header__x_pingsender_version,
looker_base_fields_metadata__header__x_source_tags,
looker_base_fields_metadata__header__x_telemetry_agent,
looker_base_fields_metadata__isp__db_version,
looker_base_fields_metadata__isp__name,
looker_base_fields_metadata__isp__organization,
looker_base_fields_metadata__user_agent__browser,
looker_base_fields_metadata__user_agent__os,
looker_base_fields_metadata__user_agent__version,
looker_base_fields_normalized_app_id,
looker_base_fields_normalized_app_name,
looker_base_fields_normalized_channel,
looker_base_fields_normalized_country_code,
looker_base_fields_normalized_os,
looker_base_fields_normalized_os_version,
looker_base_fields_sample_id,
active_users_aggregates_v1_active_hours,
active_users_aggregates_v1_adjust_network,
active_users_aggregates_v1_app_name,
active_users_aggregates_v1_app_version,
active_users_aggregates_v1_app_version_is_major_release,
active_users_aggregates_v1_app_version_major,
active_users_aggregates_v1_app_version_minor,
active_users_aggregates_v1_app_version_patch_revision,
active_users_aggregates_v1_attributed,
active_users_aggregates_v1_attribution_medium,
active_users_aggregates_v1_attribution_source,
active_users_aggregates_v1_channel,
active_users_aggregates_v1_city,
active_users_aggregates_v1_country,
active_users_aggregates_v1_dau,
active_users_aggregates_v1_distribution_id,
active_users_aggregates_v1_first_seen_year,
active_users_aggregates_v1_install_source,
active_users_aggregates_v1_is_default_browser,
active_users_aggregates_v1_language_name,
active_users_aggregates_v1_mau,
active_users_aggregates_v1_new_profiles,
active_users_aggregates_v1_os,
active_users_aggregates_v1_os_grouped,
active_users_aggregates_v1_os_version,
active_users_aggregates_v1_os_version_major,
active_users_aggregates_v1_os_version_minor,
active_users_aggregates_v1_segment,
active_users_aggregates_v1_uri_count,
active_users_aggregates_v1_wau,

                client_id,
                analysis_basis ;;
  }

  dimension: client_id {
    type: string
    sql: SAFE_CAST(${TABLE}.client_id AS STRING) ;;
    label: "Client ID"
    primary_key: yes
    group_label: "Base Fields"
    description: "Unique client identifier"
  }

  dimension: daily_active_users_v2 {
    group_label: "Metrics"
    label: "Fenix DAU"
    description: "    This is the official DAU reporting definition. The logic is
    [defined in `bigquery-etl`](https://github.com/mozilla/bigquery-etl/blob/main/sql_generators/active_users/templates/mobile_query.sql)
    and is automatically cross-checked, actively monitored, and change controlled.
    Whenever possible, this is the preferred DAU reporting definition to use for Fenix.
    This metric needs to be aggregated by `submission_date`. If it is not aggregated by `submission_date`,
    it is similar to a \"days of use\" metric, and not DAU.

    For more information, refer to [the DAU description in Confluence](https://mozilla-hub.atlassian.net/wiki/spaces/DATA/pages/314704478/Daily+Active+Users+DAU+Metric).
    For questions please contact bochocki@mozilla.com or firefox-kpi@mozilla.com.
"
    type: number
    sql: ${TABLE}.daily_active_users_v2 ;;
  }

  dimension: client_info__android_sdk_version {
    sql: ${TABLE}.looker_base_fields_client_info__android_sdk_version ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Android Sdk Version"
  }

  dimension: client_info__app_build {
    sql: ${TABLE}.looker_base_fields_client_info__app_build ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "App Build"
  }

  dimension: client_info__app_channel {
    sql: ${TABLE}.looker_base_fields_client_info__app_channel ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "App Channel"
  }

  dimension: client_info__app_display_version {
    sql: ${TABLE}.looker_base_fields_client_info__app_display_version ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "App Display Version"
  }

  dimension: client_info__architecture {
    sql: ${TABLE}.looker_base_fields_client_info__architecture ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Architecture"
  }

  dimension: client_info__build_date {
    sql: ${TABLE}.looker_base_fields_client_info__build_date ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Build Date"
  }

  dimension: client_info__client_id {
    sql: ${TABLE}.looker_base_fields_client_info__client_id ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: client_info__device_manufacturer {
    sql: ${TABLE}.looker_base_fields_client_info__device_manufacturer ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Device Manufacturer"
  }

  dimension: client_info__device_model {
    sql: ${TABLE}.looker_base_fields_client_info__device_model ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Device Model"
  }

  dimension: client_info__first_run_date {
    sql: ${TABLE}.looker_base_fields_client_info__first_run_date ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "First Run Date"
  }

  dimension: client_info__locale {
    sql: ${TABLE}.looker_base_fields_client_info__locale ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Locale"
  }

  dimension: client_info__os {
    sql: ${TABLE}.looker_base_fields_client_info__os ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Os"
  }

  dimension: client_info__os_version {
    sql: ${TABLE}.looker_base_fields_client_info__os_version ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Os Version"
  }

  dimension: client_info__session_count {
    sql: ${TABLE}.looker_base_fields_client_info__session_count ;;
    type: number
    group_label: "Base Fields"
    group_item_label: "Session Count"
  }

  dimension: client_info__session_id {
    sql: ${TABLE}.looker_base_fields_client_info__session_id ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Session Id"
  }

  dimension: client_info__telemetry_sdk_build {
    sql: ${TABLE}.looker_base_fields_client_info__telemetry_sdk_build ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Telemetry Sdk Build"
  }

  dimension: client_info__windows_build_number {
    sql: ${TABLE}.looker_base_fields_client_info__windows_build_number ;;
    type: number
    group_label: "Base Fields"
    group_item_label: "Windows Build Number"
  }

  dimension: document_id {
    sql: ${TABLE}.looker_base_fields_document_id ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: metadata__geo__city {
    sql: ${TABLE}.looker_base_fields_metadata__geo__city ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "City"
  }

  dimension: metadata__geo__country {
    sql: ${TABLE}.looker_base_fields_metadata__geo__country ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Country"
    map_layer_name: countries
  }

  dimension: metadata__geo__db_version {
    sql: ${TABLE}.looker_base_fields_metadata__geo__db_version ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Db Version"
  }

  dimension: metadata__geo__subdivision1 {
    sql: ${TABLE}.looker_base_fields_metadata__geo__subdivision1 ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Subdivision1"
  }

  dimension: metadata__geo__subdivision2 {
    sql: ${TABLE}.looker_base_fields_metadata__geo__subdivision2 ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Subdivision2"
  }

  dimension: metadata__header__date {
    sql: ${TABLE}.looker_base_fields_metadata__header__date ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Date"
  }

  dimension: metadata__header__dnt {
    sql: ${TABLE}.looker_base_fields_metadata__header__dnt ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Dnt"
  }

  dimension: metadata__header__parsed_x_lb_tags__tls_cipher_hex {
    sql: ${TABLE}.looker_base_fields_metadata__header__parsed_x_lb_tags__tls_cipher_hex ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Tls Cipher Hex"
  }

  dimension: metadata__header__parsed_x_lb_tags__tls_version {
    sql: ${TABLE}.looker_base_fields_metadata__header__parsed_x_lb_tags__tls_version ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Tls Version"
  }

  dimension: metadata__header__parsed_x_source_tags {
    sql: ${TABLE}.looker_base_fields_metadata__header__parsed_x_source_tags ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: metadata__header__x_debug_id {
    sql: ${TABLE}.looker_base_fields_metadata__header__x_debug_id ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "X Debug Id"
  }

  dimension: metadata__header__x_foxsec_ip_reputation {
    sql: ${TABLE}.looker_base_fields_metadata__header__x_foxsec_ip_reputation ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "X Foxsec Ip Reputation"
  }

  dimension: metadata__header__x_lb_tags {
    sql: ${TABLE}.looker_base_fields_metadata__header__x_lb_tags ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "X Lb Tags"
  }

  dimension: metadata__header__x_pingsender_version {
    sql: ${TABLE}.looker_base_fields_metadata__header__x_pingsender_version ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "X Pingsender Version"
  }

  dimension: metadata__header__x_source_tags {
    sql: ${TABLE}.looker_base_fields_metadata__header__x_source_tags ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "X Source Tags"
  }

  dimension: metadata__header__x_telemetry_agent {
    sql: ${TABLE}.looker_base_fields_metadata__header__x_telemetry_agent ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "X Telemetry Agent"
  }

  dimension: metadata__isp__db_version {
    sql: ${TABLE}.looker_base_fields_metadata__isp__db_version ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Db Version"
  }

  dimension: metadata__isp__name {
    sql: ${TABLE}.looker_base_fields_metadata__isp__name ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Name"
  }

  dimension: metadata__isp__organization {
    sql: ${TABLE}.looker_base_fields_metadata__isp__organization ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Organization"
  }

  dimension: metadata__user_agent__browser {
    sql: ${TABLE}.looker_base_fields_metadata__user_agent__browser ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Browser"
  }

  dimension: metadata__user_agent__os {
    sql: ${TABLE}.looker_base_fields_metadata__user_agent__os ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Os"
  }

  dimension: metadata__user_agent__version {
    sql: ${TABLE}.looker_base_fields_metadata__user_agent__version ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Version"
  }

  dimension: normalized_app_id {
    sql: ${TABLE}.looker_base_fields_normalized_app_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: normalized_app_name {
    sql: ${TABLE}.looker_base_fields_normalized_app_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: normalized_channel {
    sql: ${TABLE}.looker_base_fields_normalized_channel ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: normalized_country_code {
    sql: ${TABLE}.looker_base_fields_normalized_country_code ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: normalized_os {
    sql: ${TABLE}.looker_base_fields_normalized_os ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: normalized_os_version {
    sql: ${TABLE}.looker_base_fields_normalized_os_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: sample_id {
    sql: ${TABLE}.looker_base_fields_sample_id ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: active_hours {
    sql: ${TABLE}.active_users_aggregates_v1_active_hours ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: adjust_network {
    sql: ${TABLE}.active_users_aggregates_v1_adjust_network ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_name {
    sql: ${TABLE}.active_users_aggregates_v1_app_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_version {
    sql: ${TABLE}.active_users_aggregates_v1_app_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_version_is_major_release {
    sql: ${TABLE}.active_users_aggregates_v1_app_version_is_major_release ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: app_version_major {
    sql: ${TABLE}.active_users_aggregates_v1_app_version_major ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: app_version_minor {
    sql: ${TABLE}.active_users_aggregates_v1_app_version_minor ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: app_version_patch_revision {
    sql: ${TABLE}.active_users_aggregates_v1_app_version_patch_revision ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: attributed {
    sql: ${TABLE}.active_users_aggregates_v1_attributed ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: attribution_medium {
    sql: ${TABLE}.active_users_aggregates_v1_attribution_medium ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: attribution_source {
    sql: ${TABLE}.active_users_aggregates_v1_attribution_source ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: channel {
    sql: ${TABLE}.active_users_aggregates_v1_channel ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: city {
    sql: ${TABLE}.active_users_aggregates_v1_city ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: country {
    sql: ${TABLE}.active_users_aggregates_v1_country ;;
    type: string
    map_layer_name: countries
    group_label: "Base Fields"
  }

  dimension: dau {
    sql: ${TABLE}.active_users_aggregates_v1_dau ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: distribution_id {
    sql: ${TABLE}.active_users_aggregates_v1_distribution_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: first_seen_year {
    sql: ${TABLE}.active_users_aggregates_v1_first_seen_year ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: install_source {
    sql: ${TABLE}.active_users_aggregates_v1_install_source ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: is_default_browser {
    sql: ${TABLE}.active_users_aggregates_v1_is_default_browser ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: language_name {
    sql: ${TABLE}.active_users_aggregates_v1_language_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: mau {
    sql: ${TABLE}.active_users_aggregates_v1_mau ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: new_profiles {
    sql: ${TABLE}.active_users_aggregates_v1_new_profiles ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: os {
    sql: ${TABLE}.active_users_aggregates_v1_os ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: os_grouped {
    sql: ${TABLE}.active_users_aggregates_v1_os_grouped ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: os_version {
    sql: ${TABLE}.active_users_aggregates_v1_os_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: os_version_major {
    sql: ${TABLE}.active_users_aggregates_v1_os_version_major ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: os_version_minor {
    sql: ${TABLE}.active_users_aggregates_v1_os_version_minor ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: segment {
    sql: ${TABLE}.active_users_aggregates_v1_segment ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: uri_count {
    sql: ${TABLE}.active_users_aggregates_v1_uri_count ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: wau {
    sql: ${TABLE}.active_users_aggregates_v1_wau ;;
    type: number
    group_label: "Base Fields"
  }

  dimension_group: submission {
    type: time
    group_label: "Base Fields"
    sql: CAST(${TABLE}.analysis_basis AS TIMESTAMP) ;;
    label: "Submission"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  measure: active_hours_average {
    type: average
    sql: ${TABLE}.active_hours ;;
    label: "active_hours Average"
    group_label: "Statistics"
    description: "Average of active_hours"
  }

  set: metrics {
    fields: [daily_active_users_v2]
  }

  parameter: aggregate_metrics_by {
    label: "Aggregate Client Metrics Per"
    type: unquoted
    default_value: "day"

    allowed_value: {
      label: "Per Day"
      value: "day"
    }

    allowed_value: {
      label: "Per Week"
      value: "week"
    }

    allowed_value: {
      label: "Per Month"
      value: "month"
    }

    allowed_value: {
      label: "Per Quarter"
      value: "quarter"
    }

    allowed_value: {
      label: "Per Year"
      value: "year"
    }

    allowed_value: {
      label: "Overall"
      value: "overall"
    }
  }

  parameter: sampling {
    label: "Sample of source data in %"
    type: unquoted
    default_value: "100"
    hidden: no
  }
}