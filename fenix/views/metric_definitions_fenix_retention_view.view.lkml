
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_fenix_retention_view {
  derived_table: {
    sql: SELECT
                SUM(retained_week_4) / SUM(active_metric_date) AS retention_rate_v1,
SUM(retained_week_4_new_profiles) / SUM(new_profiles_metric_date) AS new_profile_retention_rate_v1,

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
fenix_retention_view_active_metric_date,
fenix_retention_view_adjust_ad_group,
fenix_retention_view_adjust_campaign,
fenix_retention_view_adjust_creative,
fenix_retention_view_adjust_network,
fenix_retention_view_app_name,
fenix_retention_view_app_version,
fenix_retention_view_country,
fenix_retention_view_distribution_id,
fenix_retention_view_install_source,
fenix_retention_view_is_mobile,
fenix_retention_view_lifecycle_stage,
fenix_retention_view_locale,
fenix_retention_view_meta_attribution_app,
fenix_retention_view_new_profiles_metric_date,
fenix_retention_view_normalized_channel,
fenix_retention_view_paid_vs_organic,
fenix_retention_view_ping_sent_metric_date,
fenix_retention_view_ping_sent_week_4,
fenix_retention_view_play_store_attribution_campaign,
fenix_retention_view_play_store_attribution_medium,
fenix_retention_view_play_store_attribution_source,
fenix_retention_view_repeat_profiles,
fenix_retention_view_retained_week_4,
fenix_retention_view_retained_week_4_new_profiles,

                NULL AS client_id,
                {% if aggregate_metrics_by._parameter_value == 'day' %}
                metric_date AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'week'  %}
                (FORMAT_DATE(
                    '%F',
                    DATE_TRUNC(metric_date,
                    WEEK(MONDAY)))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'month'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    metric_date)
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'quarter'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    DATE_TRUNC(metric_date,
                    QUARTER))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'year'  %}
                (EXTRACT(
                    YEAR FROM metric_date)
                ) AS analysis_basis
                {% else %}
                NULL as analysis_basis
                {% endif %}
            FROM
                (
                    SELECT
                        fenix_retention_view.*,
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
fenix_retention_view.active_metric_date AS fenix_retention_view_active_metric_date,
fenix_retention_view.adjust_ad_group AS fenix_retention_view_adjust_ad_group,
fenix_retention_view.adjust_campaign AS fenix_retention_view_adjust_campaign,
fenix_retention_view.adjust_creative AS fenix_retention_view_adjust_creative,
fenix_retention_view.adjust_network AS fenix_retention_view_adjust_network,
fenix_retention_view.app_name AS fenix_retention_view_app_name,
fenix_retention_view.app_version AS fenix_retention_view_app_version,
fenix_retention_view.country AS fenix_retention_view_country,
fenix_retention_view.distribution_id AS fenix_retention_view_distribution_id,
fenix_retention_view.install_source AS fenix_retention_view_install_source,
fenix_retention_view.is_mobile AS fenix_retention_view_is_mobile,
fenix_retention_view.lifecycle_stage AS fenix_retention_view_lifecycle_stage,
fenix_retention_view.locale AS fenix_retention_view_locale,
fenix_retention_view.meta_attribution_app AS fenix_retention_view_meta_attribution_app,
fenix_retention_view.new_profiles_metric_date AS fenix_retention_view_new_profiles_metric_date,
fenix_retention_view.normalized_channel AS fenix_retention_view_normalized_channel,
fenix_retention_view.paid_vs_organic AS fenix_retention_view_paid_vs_organic,
fenix_retention_view.ping_sent_metric_date AS fenix_retention_view_ping_sent_metric_date,
fenix_retention_view.ping_sent_week_4 AS fenix_retention_view_ping_sent_week_4,
fenix_retention_view.play_store_attribution_campaign AS fenix_retention_view_play_store_attribution_campaign,
fenix_retention_view.play_store_attribution_medium AS fenix_retention_view_play_store_attribution_medium,
fenix_retention_view.play_store_attribution_source AS fenix_retention_view_play_store_attribution_source,
fenix_retention_view.repeat_profiles AS fenix_retention_view_repeat_profiles,
fenix_retention_view.retained_week_4 AS fenix_retention_view_retained_week_4,
fenix_retention_view.retained_week_4_new_profiles AS fenix_retention_view_retained_week_4_new_profiles,

                    FROM
                    (
            SELECT
                *
            FROM
                (
    SELECT *
     FROM `moz-fx-data-shared-prod.fenix.retention`
    WHERE is_mobile
)
            ) AS fenix_retention_view
        
                    WHERE 
                    fenix_retention_view.metric_date
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
fenix_retention_view_active_metric_date,
fenix_retention_view_adjust_ad_group,
fenix_retention_view_adjust_campaign,
fenix_retention_view_adjust_creative,
fenix_retention_view_adjust_network,
fenix_retention_view_app_name,
fenix_retention_view_app_version,
fenix_retention_view_country,
fenix_retention_view_distribution_id,
fenix_retention_view_install_source,
fenix_retention_view_is_mobile,
fenix_retention_view_lifecycle_stage,
fenix_retention_view_locale,
fenix_retention_view_meta_attribution_app,
fenix_retention_view_new_profiles_metric_date,
fenix_retention_view_normalized_channel,
fenix_retention_view_paid_vs_organic,
fenix_retention_view_ping_sent_metric_date,
fenix_retention_view_ping_sent_week_4,
fenix_retention_view_play_store_attribution_campaign,
fenix_retention_view_play_store_attribution_medium,
fenix_retention_view_play_store_attribution_source,
fenix_retention_view_repeat_profiles,
fenix_retention_view_retained_week_4,
fenix_retention_view_retained_week_4_new_profiles,

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

  dimension: retention_rate_v1 {
    group_label: "Metrics"
    label: "Fenix Retention Rate"
    description: "    The Retention Rate is calculated as the proportion of clients that are active on the 4th week after the metric date.
"
    type: number
    sql: ${TABLE}.retention_rate_v1 ;;
  }

  dimension: new_profile_retention_rate_v1 {
    group_label: "Metrics"
    label: "Fenix New Proflie Retention Rate"
    description: "    The New Profile Retention Rate is calculated as the proportion of new profiles that are active on the 4th week after the metric date.
    More information is provided on the
    [New Profiles, Retention and Engagement Rate Confluence Page](https://mozilla-hub.atlassian.net/wiki/spaces/DATA/pages/814481685/Firefox+New+Profiles+Retention+and+Engagement#New-Profile-Retention).
"
    type: number
    sql: ${TABLE}.new_profile_retention_rate_v1 ;;
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

  dimension: active_metric_date {
    sql: ${TABLE}.fenix_retention_view_active_metric_date ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: adjust_ad_group {
    sql: ${TABLE}.fenix_retention_view_adjust_ad_group ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: adjust_campaign {
    sql: ${TABLE}.fenix_retention_view_adjust_campaign ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: adjust_creative {
    sql: ${TABLE}.fenix_retention_view_adjust_creative ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: adjust_network {
    sql: ${TABLE}.fenix_retention_view_adjust_network ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_name {
    sql: ${TABLE}.fenix_retention_view_app_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_version {
    sql: ${TABLE}.fenix_retention_view_app_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: country {
    sql: ${TABLE}.fenix_retention_view_country ;;
    type: string
    map_layer_name: countries
    group_label: "Base Fields"
  }

  dimension: distribution_id {
    sql: ${TABLE}.fenix_retention_view_distribution_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: install_source {
    sql: ${TABLE}.fenix_retention_view_install_source ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: is_mobile {
    sql: ${TABLE}.fenix_retention_view_is_mobile ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: lifecycle_stage {
    sql: ${TABLE}.fenix_retention_view_lifecycle_stage ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: locale {
    sql: ${TABLE}.fenix_retention_view_locale ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: meta_attribution_app {
    sql: ${TABLE}.fenix_retention_view_meta_attribution_app ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: new_profiles_metric_date {
    sql: ${TABLE}.fenix_retention_view_new_profiles_metric_date ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: paid_vs_organic {
    sql: ${TABLE}.fenix_retention_view_paid_vs_organic ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: ping_sent_metric_date {
    sql: ${TABLE}.fenix_retention_view_ping_sent_metric_date ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: ping_sent_week_4 {
    sql: ${TABLE}.fenix_retention_view_ping_sent_week_4 ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: play_store_attribution_campaign {
    sql: ${TABLE}.fenix_retention_view_play_store_attribution_campaign ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: play_store_attribution_medium {
    sql: ${TABLE}.fenix_retention_view_play_store_attribution_medium ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: play_store_attribution_source {
    sql: ${TABLE}.fenix_retention_view_play_store_attribution_source ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: repeat_profiles {
    sql: ${TABLE}.fenix_retention_view_repeat_profiles ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: retained_week_4 {
    sql: ${TABLE}.fenix_retention_view_retained_week_4 ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: retained_week_4_new_profiles {
    sql: ${TABLE}.fenix_retention_view_retained_week_4_new_profiles ;;
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

  set: metrics {
    fields: [retention_rate_v1, new_profile_retention_rate_v1]
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