
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_newtab_visits_topsite_tile_interactions {
  derived_table: {
    sql: SELECT
                COALESCE(
        SUM(CASE
          WHEN topsite_tile_interactions.topsite_tile_position < 2 THEN COALESCE(topsite_tile_interactions.sponsored_topsite_tile_impressions, 0) +  COALESCE(topsite_tile_interactions.organic_topsite_tile_impressions, 0)
          ELSE 0 END
        ),
        0
      ) AS all_tile_impressions_pos1_2,
COALESCE(
        SUM(CASE
          WHEN topsite_tile_interactions.topsite_tile_position >= 2 THEN COALESCE(topsite_tile_interactions.sponsored_topsite_tile_impressions, 0) +  COALESCE(topsite_tile_interactions.organic_topsite_tile_impressions, 0)
          ELSE 0 END
        ),
        0
      ) AS all_tile_impressions_pos3_more,
COALESCE(
        SUM(CASE
          WHEN (topsite_tile_interactions.topsite_tile_position < 2 AND (topsite_tile_interactions.sponsored_topsite_tile_clicks > 0 OR  topsite_tile_interactions.organic_topsite_tile_clicks > 0))
          THEN COALESCE(topsite_tile_interactions.sponsored_topsite_tile_clicks, 0) +  COALESCE(topsite_tile_interactions.organic_topsite_tile_clicks, 0)
          ELSE 0 END
        ),
        0
      ) AS all_tile_clicks_pos1_2,
COALESCE(
        SUM(CASE
          WHEN (topsite_tile_interactions.topsite_tile_position >= 2 AND (topsite_tile_interactions.sponsored_topsite_tile_clicks > 0 OR  topsite_tile_interactions.organic_topsite_tile_clicks > 0))
          THEN COALESCE(topsite_tile_interactions.sponsored_topsite_tile_clicks, 0) +  COALESCE(topsite_tile_interactions.organic_topsite_tile_clicks, 0)
          ELSE 0 END
        ),
        0
      ) AS all_tile_clicks_pos3_more,
SUM(COALESCE(topsite_tile_interactions.sponsored_topsite_tile_impressions, 0)) AS sponsored_tile_impressions,
COALESCE(
        SUM(CASE
          WHEN
            topsite_tile_interactions.sponsored_topsite_tile_impressions > 0 AND topsite_tile_interactions.topsite_tile_position < 2
            THEN topsite_tile_interactions.sponsored_topsite_tile_impressions
          ELSE 0
          END),
        0
      ) AS sponsored_tile_impressions_pos1_2,
COALESCE(
        SUM(CASE
          WHEN
            topsite_tile_interactions.sponsored_topsite_tile_impressions > 0 AND topsite_tile_interactions.topsite_tile_position >= 2
            THEN topsite_tile_interactions.sponsored_topsite_tile_impressions
          ELSE 0
          END),
        0
      ) AS sponsored_tile_impressions_pos3_more,
SUM(COALESCE(topsite_tile_interactions.sponsored_topsite_tile_clicks, 0)) AS sponsored_tile_clicks,
COALESCE(
        SUM(CASE
          WHEN
            topsite_tile_interactions.sponsored_topsite_tile_clicks > 0 AND topsite_tile_interactions.topsite_tile_position < 2
            THEN topsite_tile_interactions.sponsored_topsite_tile_clicks
          ELSE 0
          END),
        0
      ) AS sponsored_tile_clicks_pos1_2,
COALESCE(
        SUM(CASE
          WHEN
            topsite_tile_interactions.sponsored_topsite_tile_clicks > 0 AND topsite_tile_interactions.topsite_tile_position >= 2
            THEN topsite_tile_interactions.sponsored_topsite_tile_clicks
          ELSE 0
          END),
        0
      ) AS sponsored_tile_clicks_pos3_more,
COALESCE(MAX(IF(newtab_newtab_category = 'enabled', 1, 0)), 0) AS newtab_newtab_enabled,
COALESCE(MAX(IF(newtab_homepage_category = 'enabled', 1, 0)), 0) AS newtab_homepage_enabled,
COALESCE(MAX(CAST(newtab_search_enabled AS INT)), 0) AS newtab_search_enabled,
COALESCE(MAX(CAST(topsites_enabled AS INT)), 0) AS newtab_tiles_enabled,
COALESCE(MAX(CAST(pocket_enabled AS INT)), 0) AS newtab_pocket_enabled,
COALESCE(MAX(CAST(pocket_sponsored_stories_enabled AS INT)), 0) AS newtab_sponsored_pocket_stories_enabled,
SUM(COALESCE(topsite_tile_interactions.organic_topsite_tile_clicks, 0)) AS newtab_organic_topsite_clicks,
SUM(COALESCE(topsite_tile_interactions.organic_topsite_tile_impressions, 0)) AS newtab_organic_topsite_impressions,
COALESCE(SUM(topsite_tile_interactions.sponsored_topsite_tile_dismissals), 0) AS sponsored_tiles_dismissals,
COALESCE(LOGICAL_OR(
        topsite_tile_interactions.sponsored_topsite_tile_dismissals > 0
      ), FALSE) AS any_sponsored_tiles_dismissals,
COALESCE(
        SUM(CASE WHEN topsite_tile_interactions.sponsored_topsite_tile_dismissals > 0 AND topsite_tile_interactions.topsite_tile_position < 2 THEN topsite_tile_interactions.sponsored_topsite_tile_dismissals ELSE 0 END),
        0
      ) AS sponsored_tiles_dismissals_pos1_2,
COALESCE(
        SUM(CASE WHEN topsite_tile_interactions.sponsored_topsite_tile_dismissals > 0 AND topsite_tile_interactions.topsite_tile_position >= 2 THEN topsite_tile_interactions.sponsored_topsite_tile_dismissals ELSE 0 END),
        0
      ) AS sponsored_tiles_dismissals_pos3_more,
COALESCE(SUM(topsite_tile_interactions.organic_topsite_tile_dismissals),0) AS organic_tiles_dismissals,
COALESCE(LOGICAL_OR(
        topsite_tile_interactions.organic_topsite_tile_dismissals > 0
      ), FALSE) AS any_organic_tiles_dismissals,

                base_aborts_content_sum AS aborts_content_sum,
base.base_aborts_gmplugin_sum AS aborts_gmplugin_sum,
base.base_aborts_plugin_sum AS aborts_plugin_sum,
base.base_active_addons_count_mean AS active_addons_count_mean,
base.base_active_hours_sum AS active_hours_sum,
base.base_ad_clicks_count_all AS ad_clicks_count_all,
base.base_addon_compatibility_check_enabled AS addon_compatibility_check_enabled,
base.base_app_build_id AS app_build_id,
base.base_app_display_version AS app_display_version,
base.base_app_name AS app_name,
base.base_app_version AS app_version,
base.base_apple_model_id AS apple_model_id,
base.base_attribution__campaign AS attribution__campaign,
base.base_attribution__content AS attribution__content,
base.base_attribution__dlsource AS attribution__dlsource,
base.base_attribution__dltoken AS attribution__dltoken,
base.base_attribution__experiment AS attribution__experiment,
base.base_attribution__medium AS attribution__medium,
base.base_attribution__source AS attribution__source,
base.base_attribution__ua AS attribution__ua,
base.base_attribution__variation AS attribution__variation,
base.base_blocklist_enabled AS blocklist_enabled,
base.base_bookmark_migrations_quantity_all AS bookmark_migrations_quantity_all,
base.base_bookmark_migrations_quantity_chrome AS bookmark_migrations_quantity_chrome,
base.base_bookmark_migrations_quantity_edge AS bookmark_migrations_quantity_edge,
base.base_bookmark_migrations_quantity_safari AS bookmark_migrations_quantity_safari,
base.base_browser_version_info__is_major_release AS browser_version_info__is_major_release,
base.base_browser_version_info__major_version AS browser_version_info__major_version,
base.base_browser_version_info__minor_version AS browser_version_info__minor_version,
base.base_browser_version_info__patch_revision AS browser_version_info__patch_revision,
base.base_browser_version_info__version AS browser_version_info__version,
base.base_channel AS channel,
base.base_city AS city,
base.base_client_clock_skew_mean AS client_clock_skew_mean,
base.base_client_submission_latency_mean AS client_submission_latency_mean,
base.base_content_crash_count AS content_crash_count,
base.base_contextual_services_quicksuggest_block_dynamic_wikipedia_sum AS contextual_services_quicksuggest_block_dynamic_wikipedia_sum,
base.base_contextual_services_quicksuggest_block_nonsponsored_bestmatch_sum AS contextual_services_quicksuggest_block_nonsponsored_bestmatch_sum,
base.base_contextual_services_quicksuggest_block_nonsponsored_sum AS contextual_services_quicksuggest_block_nonsponsored_sum,
base.base_contextual_services_quicksuggest_block_sponsored_bestmatch_sum AS contextual_services_quicksuggest_block_sponsored_bestmatch_sum,
base.base_contextual_services_quicksuggest_block_sponsored_sum AS contextual_services_quicksuggest_block_sponsored_sum,
base.base_contextual_services_quicksuggest_block_weather_sum AS contextual_services_quicksuggest_block_weather_sum,
base.base_contextual_services_quicksuggest_click_dynamic_wikipedia_sum AS contextual_services_quicksuggest_click_dynamic_wikipedia_sum,
base.base_contextual_services_quicksuggest_click_nonsponsored_bestmatch_sum AS contextual_services_quicksuggest_click_nonsponsored_bestmatch_sum,
base.base_contextual_services_quicksuggest_click_nonsponsored_sum AS contextual_services_quicksuggest_click_nonsponsored_sum,
base.base_contextual_services_quicksuggest_click_sponsored_bestmatch_sum AS contextual_services_quicksuggest_click_sponsored_bestmatch_sum,
base.base_contextual_services_quicksuggest_click_sponsored_sum AS contextual_services_quicksuggest_click_sponsored_sum,
base.base_contextual_services_quicksuggest_click_weather_sum AS contextual_services_quicksuggest_click_weather_sum,
base.base_contextual_services_quicksuggest_help_dynamic_wikipedia_sum AS contextual_services_quicksuggest_help_dynamic_wikipedia_sum,
base.base_contextual_services_quicksuggest_help_nonsponsored_bestmatch_sum AS contextual_services_quicksuggest_help_nonsponsored_bestmatch_sum,
base.base_contextual_services_quicksuggest_help_nonsponsored_sum AS contextual_services_quicksuggest_help_nonsponsored_sum,
base.base_contextual_services_quicksuggest_help_sponsored_bestmatch_sum AS contextual_services_quicksuggest_help_sponsored_bestmatch_sum,
base.base_contextual_services_quicksuggest_help_sponsored_sum AS contextual_services_quicksuggest_help_sponsored_sum,
base.base_contextual_services_quicksuggest_help_weather_sum AS contextual_services_quicksuggest_help_weather_sum,
base.base_contextual_services_quicksuggest_impression_dynamic_wikipedia_sum AS contextual_services_quicksuggest_impression_dynamic_wikipedia_sum,
base.base_contextual_services_quicksuggest_impression_nonsponsored_bestmatch_sum AS contextual_services_quicksuggest_impression_nonsponsored_bestmatch_sum,
base.base_contextual_services_quicksuggest_impression_nonsponsored_sum AS contextual_services_quicksuggest_impression_nonsponsored_sum,
base.base_contextual_services_quicksuggest_impression_sponsored_bestmatch_sum AS contextual_services_quicksuggest_impression_sponsored_bestmatch_sum,
base.base_contextual_services_quicksuggest_impression_sponsored_sum AS contextual_services_quicksuggest_impression_sponsored_sum,
base.base_contextual_services_quicksuggest_impression_weather_sum AS contextual_services_quicksuggest_impression_weather_sum,
base.base_contextual_services_topsites_click_sum AS contextual_services_topsites_click_sum,
base.base_contextual_services_topsites_impression_sum AS contextual_services_topsites_impression_sum,
base.base_country AS country,
base.base_cpu_cores AS cpu_cores,
base.base_cpu_count AS cpu_count,
base.base_cpu_family AS cpu_family,
base.base_cpu_l2_cache_kb AS cpu_l2_cache_kb,
base.base_cpu_l3_cache_kb AS cpu_l3_cache_kb,
base.base_cpu_model AS cpu_model,
base.base_cpu_speed_mhz AS cpu_speed_mhz,
base.base_cpu_stepping AS cpu_stepping,
base.base_cpu_vendor AS cpu_vendor,
base.base_crash_submit_attempt_content_sum AS crash_submit_attempt_content_sum,
base.base_crash_submit_attempt_main_sum AS crash_submit_attempt_main_sum,
base.base_crash_submit_attempt_plugin_sum AS crash_submit_attempt_plugin_sum,
base.base_crash_submit_success_content_sum AS crash_submit_success_content_sum,
base.base_crash_submit_success_main_sum AS crash_submit_success_main_sum,
base.base_crash_submit_success_plugin_sum AS crash_submit_success_plugin_sum,
base.base_crashes_detected_content_sum AS crashes_detected_content_sum,
base.base_crashes_detected_gmplugin_sum AS crashes_detected_gmplugin_sum,
base.base_crashes_detected_plugin_sum AS crashes_detected_plugin_sum,
base.base_default_private_search_engine AS default_private_search_engine,
base.base_default_private_search_engine_data_load_path AS default_private_search_engine_data_load_path,
base.base_default_private_search_engine_data_name AS default_private_search_engine_data_name,
base.base_default_private_search_engine_data_origin AS default_private_search_engine_data_origin,
base.base_default_private_search_engine_data_submission_url AS default_private_search_engine_data_submission_url,
base.base_default_search_engine AS default_search_engine,
base.base_default_search_engine_data_load_path AS default_search_engine_data_load_path,
base.base_default_search_engine_data_name AS default_search_engine_data_name,
base.base_default_search_engine_data_origin AS default_search_engine_data_origin,
base.base_default_search_engine_data_submission_url AS default_search_engine_data_submission_url,
base.base_devtools_toolbox_opened_count_sum AS devtools_toolbox_opened_count_sum,
base.base_distribution_id AS distribution_id,
base.base_distribution_version AS distribution_version,
base.base_distributor AS distributor,
base.base_distributor_channel AS distributor_channel,
base.base_dom_parentprocess_private_window_used AS dom_parentprocess_private_window_used,
base.base_e10s_enabled AS e10s_enabled,
base.base_env_build_arch AS env_build_arch,
base.base_env_build_id AS env_build_id,
base.base_env_build_platform_version AS env_build_platform_version,
base.base_env_build_version AS env_build_version,
base.base_env_build_xpcom_abi AS env_build_xpcom_abi,
base.base_first_document_id AS first_document_id,
base.base_first_paint_mean AS first_paint_mean,
base.base_flash_version AS flash_version,
base.base_fxa_configured AS fxa_configured,
base.base_geo_db_version AS geo_db_version,
base.base_geo_subdivision1 AS geo_subdivision1,
base.base_geo_subdivision2 AS geo_subdivision2,
base.base_gfx_features_advanced_layers_status AS gfx_features_advanced_layers_status,
base.base_gfx_features_d2d_status AS gfx_features_d2d_status,
base.base_gfx_features_d3d11_status AS gfx_features_d3d11_status,
base.base_gfx_features_gpu_process_status AS gfx_features_gpu_process_status,
base.base_gpu_crash_count AS gpu_crash_count,
base.base_has_adblocker_enabled AS has_adblocker_enabled,
base.base_histogram_parent_devtools_aboutdebugging_opened_count_sum AS histogram_parent_devtools_aboutdebugging_opened_count_sum,
base.base_histogram_parent_devtools_animationinspector_opened_count_sum AS histogram_parent_devtools_animationinspector_opened_count_sum,
base.base_histogram_parent_devtools_browserconsole_opened_count_sum AS histogram_parent_devtools_browserconsole_opened_count_sum,
base.base_histogram_parent_devtools_canvasdebugger_opened_count_sum AS histogram_parent_devtools_canvasdebugger_opened_count_sum,
base.base_histogram_parent_devtools_computedview_opened_count_sum AS histogram_parent_devtools_computedview_opened_count_sum,
base.base_histogram_parent_devtools_custom_opened_count_sum AS histogram_parent_devtools_custom_opened_count_sum,
base.base_histogram_parent_devtools_dom_opened_count_sum AS histogram_parent_devtools_dom_opened_count_sum,
base.base_histogram_parent_devtools_eyedropper_opened_count_sum AS histogram_parent_devtools_eyedropper_opened_count_sum,
base.base_histogram_parent_devtools_fontinspector_opened_count_sum AS histogram_parent_devtools_fontinspector_opened_count_sum,
base.base_histogram_parent_devtools_inspector_opened_count_sum AS histogram_parent_devtools_inspector_opened_count_sum,
base.base_histogram_parent_devtools_jsbrowserdebugger_opened_count_sum AS histogram_parent_devtools_jsbrowserdebugger_opened_count_sum,
base.base_histogram_parent_devtools_jsdebugger_opened_count_sum AS histogram_parent_devtools_jsdebugger_opened_count_sum,
base.base_histogram_parent_devtools_jsprofiler_opened_count_sum AS histogram_parent_devtools_jsprofiler_opened_count_sum,
base.base_histogram_parent_devtools_layoutview_opened_count_sum AS histogram_parent_devtools_layoutview_opened_count_sum,
base.base_histogram_parent_devtools_memory_opened_count_sum AS histogram_parent_devtools_memory_opened_count_sum,
base.base_histogram_parent_devtools_menu_eyedropper_opened_count_sum AS histogram_parent_devtools_menu_eyedropper_opened_count_sum,
base.base_histogram_parent_devtools_netmonitor_opened_count_sum AS histogram_parent_devtools_netmonitor_opened_count_sum,
base.base_histogram_parent_devtools_options_opened_count_sum AS histogram_parent_devtools_options_opened_count_sum,
base.base_histogram_parent_devtools_paintflashing_opened_count_sum AS histogram_parent_devtools_paintflashing_opened_count_sum,
base.base_histogram_parent_devtools_picker_eyedropper_opened_count_sum AS histogram_parent_devtools_picker_eyedropper_opened_count_sum,
base.base_histogram_parent_devtools_responsive_opened_count_sum AS histogram_parent_devtools_responsive_opened_count_sum,
base.base_histogram_parent_devtools_ruleview_opened_count_sum AS histogram_parent_devtools_ruleview_opened_count_sum,
base.base_histogram_parent_devtools_scratchpad_opened_count_sum AS histogram_parent_devtools_scratchpad_opened_count_sum,
base.base_histogram_parent_devtools_scratchpad_window_opened_count_sum AS histogram_parent_devtools_scratchpad_window_opened_count_sum,
base.base_histogram_parent_devtools_shadereditor_opened_count_sum AS histogram_parent_devtools_shadereditor_opened_count_sum,
base.base_histogram_parent_devtools_storage_opened_count_sum AS histogram_parent_devtools_storage_opened_count_sum,
base.base_histogram_parent_devtools_styleeditor_opened_count_sum AS histogram_parent_devtools_styleeditor_opened_count_sum,
base.base_histogram_parent_devtools_webaudioeditor_opened_count_sum AS histogram_parent_devtools_webaudioeditor_opened_count_sum,
base.base_histogram_parent_devtools_webconsole_opened_count_sum AS histogram_parent_devtools_webconsole_opened_count_sum,
base.base_histogram_parent_devtools_webide_opened_count_sum AS histogram_parent_devtools_webide_opened_count_sum,
base.base_history_migrations_quantity_all AS history_migrations_quantity_all,
base.base_history_migrations_quantity_chrome AS history_migrations_quantity_chrome,
base.base_history_migrations_quantity_edge AS history_migrations_quantity_edge,
base.base_history_migrations_quantity_safari AS history_migrations_quantity_safari,
base.base_install_year AS install_year,
base.base_is_default_browser AS is_default_browser,
base.base_is_wow64 AS is_wow64,
base.base_isp_name AS isp_name,
base.base_isp_organization AS isp_organization,
base.base_locale AS locale,
base.base_logins_migrations_quantity_all AS logins_migrations_quantity_all,
base.base_logins_migrations_quantity_chrome AS logins_migrations_quantity_chrome,
base.base_logins_migrations_quantity_edge AS logins_migrations_quantity_edge,
base.base_logins_migrations_quantity_safari AS logins_migrations_quantity_safari,
base.base_main_crash_count AS main_crash_count,
base.base_max_subsession_counter AS max_subsession_counter,
base.base_media_play_time_ms_audio_sum AS media_play_time_ms_audio_sum,
base.base_media_play_time_ms_video_sum AS media_play_time_ms_video_sum,
base.base_memory_mb AS memory_mb,
base.base_min_subsession_counter AS min_subsession_counter,
base.base_n_created_pictureinpicture AS n_created_pictureinpicture,
base.base_n_logged_event AS n_logged_event,
base.base_n_viewed_protection_report AS n_viewed_protection_report,
base.base_normalized_channel AS normalized_channel,
base.base_normalized_os_version AS normalized_os_version,
base.base_os AS os,
base.base_os_environment_is_taskbar_pinned_any AS os_environment_is_taskbar_pinned_any,
base.base_os_environment_is_taskbar_pinned_private AS os_environment_is_taskbar_pinned_private,
base.base_os_environment_is_taskbar_pinned_private_any AS os_environment_is_taskbar_pinned_private_any,
base.base_os_service_pack_major AS os_service_pack_major,
base.base_os_service_pack_minor AS os_service_pack_minor,
base.base_os_version AS os_version,
base.base_partner_id AS partner_id,
base.base_pings_aggregated_by_this_row AS pings_aggregated_by_this_row,
base.base_places_bookmarks_count_mean AS places_bookmarks_count_mean,
base.base_places_bookmarks_searchbar_cumulative_searches_sum AS places_bookmarks_searchbar_cumulative_searches_sum,
base.base_places_library_cumulative_bookmark_searches_sum AS places_library_cumulative_bookmark_searches_sum,
base.base_places_library_cumulative_history_searches_sum AS places_library_cumulative_history_searches_sum,
base.base_places_pages_count_mean AS places_pages_count_mean,
base.base_places_previousday_visits_mean AS places_previousday_visits_mean,
base.base_places_searchbar_cumulative_filter_count_sum AS places_searchbar_cumulative_filter_count_sum,
base.base_places_searchbar_cumulative_searches_sum AS places_searchbar_cumulative_searches_sum,
base.base_plugin_hangs_sum AS plugin_hangs_sum,
base.base_plugins_infobar_allow_sum AS plugins_infobar_allow_sum,
base.base_plugins_infobar_block_sum AS plugins_infobar_block_sum,
base.base_plugins_infobar_shown_sum AS plugins_infobar_shown_sum,
base.base_plugins_notification_shown_sum AS plugins_notification_shown_sum,
base.base_previous_build_id AS previous_build_id,
base.base_profile_age_in_days AS profile_age_in_days,
base.base_profile_creation_date AS profile_creation_date,
base.base_push_api_notify_sum AS push_api_notify_sum,
base.base_rdd_crash_count AS rdd_crash_count,
base.base_sample_id AS sample_id,
base.base_sandbox_effective_content_process_level AS sandbox_effective_content_process_level,
base.base_scalar_a11y_hcm_background AS scalar_a11y_hcm_background,
base.base_scalar_a11y_hcm_foreground AS scalar_a11y_hcm_foreground,
base.base_scalar_combined_webrtc_nicer_stun_retransmits_sum AS scalar_combined_webrtc_nicer_stun_retransmits_sum,
base.base_scalar_combined_webrtc_nicer_turn_401s_sum AS scalar_combined_webrtc_nicer_turn_401s_sum,
base.base_scalar_combined_webrtc_nicer_turn_403s_sum AS scalar_combined_webrtc_nicer_turn_403s_sum,
base.base_scalar_combined_webrtc_nicer_turn_438s_sum AS scalar_combined_webrtc_nicer_turn_438s_sum,
base.base_scalar_content_navigator_storage_estimate_count_sum AS scalar_content_navigator_storage_estimate_count_sum,
base.base_scalar_content_navigator_storage_persist_count_sum AS scalar_content_navigator_storage_persist_count_sum,
base.base_scalar_parent_aushelper_websense_reg_version AS scalar_parent_aushelper_websense_reg_version,
base.base_scalar_parent_browser_engagement_max_concurrent_tab_count_max AS scalar_parent_browser_engagement_max_concurrent_tab_count_max,
base.base_scalar_parent_browser_engagement_max_concurrent_window_count_max AS scalar_parent_browser_engagement_max_concurrent_window_count_max,
base.base_scalar_parent_browser_engagement_tab_open_event_count_sum AS scalar_parent_browser_engagement_tab_open_event_count_sum,
base.base_scalar_parent_browser_engagement_total_uri_count_normal_and_private_mode_sum AS scalar_parent_browser_engagement_total_uri_count_normal_and_private_mode_sum,
base.base_scalar_parent_browser_engagement_total_uri_count_sum AS scalar_parent_browser_engagement_total_uri_count_sum,
base.base_scalar_parent_browser_engagement_unfiltered_uri_count_sum AS scalar_parent_browser_engagement_unfiltered_uri_count_sum,
base.base_scalar_parent_browser_engagement_unique_domains_count_max AS scalar_parent_browser_engagement_unique_domains_count_max,
base.base_scalar_parent_browser_engagement_unique_domains_count_mean AS scalar_parent_browser_engagement_unique_domains_count_mean,
base.base_scalar_parent_browser_engagement_window_open_event_count_sum AS scalar_parent_browser_engagement_window_open_event_count_sum,
base.base_scalar_parent_browser_ui_interaction_textrecognition_error_sum AS scalar_parent_browser_ui_interaction_textrecognition_error_sum,
base.base_scalar_parent_devtools_accessibility_node_inspected_count_sum AS scalar_parent_devtools_accessibility_node_inspected_count_sum,
base.base_scalar_parent_devtools_accessibility_opened_count_sum AS scalar_parent_devtools_accessibility_opened_count_sum,
base.base_scalar_parent_devtools_accessibility_picker_used_count_sum AS scalar_parent_devtools_accessibility_picker_used_count_sum,
base.base_scalar_parent_devtools_accessibility_service_enabled_count_sum AS scalar_parent_devtools_accessibility_service_enabled_count_sum,
base.base_scalar_parent_devtools_copy_full_css_selector_opened_sum AS scalar_parent_devtools_copy_full_css_selector_opened_sum,
base.base_scalar_parent_devtools_copy_unique_css_selector_opened_sum AS scalar_parent_devtools_copy_unique_css_selector_opened_sum,
base.base_scalar_parent_devtools_toolbar_eyedropper_opened_sum AS scalar_parent_devtools_toolbar_eyedropper_opened_sum,
base.base_scalar_parent_navigator_storage_estimate_count_sum AS scalar_parent_navigator_storage_estimate_count_sum,
base.base_scalar_parent_navigator_storage_persist_count_sum AS scalar_parent_navigator_storage_persist_count_sum,
base.base_scalar_parent_os_environment_is_taskbar_pinned AS scalar_parent_os_environment_is_taskbar_pinned,
base.base_scalar_parent_os_environment_launched_via_desktop AS scalar_parent_os_environment_launched_via_desktop,
base.base_scalar_parent_os_environment_launched_via_other AS scalar_parent_os_environment_launched_via_other,
base.base_scalar_parent_os_environment_launched_via_other_shortcut AS scalar_parent_os_environment_launched_via_other_shortcut,
base.base_scalar_parent_os_environment_launched_via_start_menu AS scalar_parent_os_environment_launched_via_start_menu,
base.base_scalar_parent_os_environment_launched_via_taskbar AS scalar_parent_os_environment_launched_via_taskbar,
base.base_scalar_parent_os_environment_launched_via_taskbar_private AS scalar_parent_os_environment_launched_via_taskbar_private,
base.base_scalar_parent_storage_sync_api_usage_extensions_using_sum AS scalar_parent_storage_sync_api_usage_extensions_using_sum,
base.base_scalar_parent_urlbar_impression_autofill_about_sum AS scalar_parent_urlbar_impression_autofill_about_sum,
base.base_scalar_parent_urlbar_impression_autofill_adaptive_sum AS scalar_parent_urlbar_impression_autofill_adaptive_sum,
base.base_scalar_parent_urlbar_impression_autofill_origin_sum AS scalar_parent_urlbar_impression_autofill_origin_sum,
base.base_scalar_parent_urlbar_impression_autofill_other_sum AS scalar_parent_urlbar_impression_autofill_other_sum,
base.base_scalar_parent_urlbar_impression_autofill_preloaded_sum AS scalar_parent_urlbar_impression_autofill_preloaded_sum,
base.base_scalar_parent_urlbar_impression_autofill_url_sum AS scalar_parent_urlbar_impression_autofill_url_sum,
base.base_scalar_parent_urlbar_picked_autofill_about_sum AS scalar_parent_urlbar_picked_autofill_about_sum,
base.base_scalar_parent_urlbar_picked_autofill_adaptive_sum AS scalar_parent_urlbar_picked_autofill_adaptive_sum,
base.base_scalar_parent_urlbar_picked_autofill_origin_sum AS scalar_parent_urlbar_picked_autofill_origin_sum,
base.base_scalar_parent_urlbar_picked_autofill_other_sum AS scalar_parent_urlbar_picked_autofill_other_sum,
base.base_scalar_parent_urlbar_picked_autofill_preloaded_sum AS scalar_parent_urlbar_picked_autofill_preloaded_sum,
base.base_scalar_parent_urlbar_picked_autofill_sum AS scalar_parent_urlbar_picked_autofill_sum,
base.base_scalar_parent_urlbar_picked_autofill_url_sum AS scalar_parent_urlbar_picked_autofill_url_sum,
base.base_scalar_parent_urlbar_picked_bookmark_sum AS scalar_parent_urlbar_picked_bookmark_sum,
base.base_scalar_parent_urlbar_picked_dynamic_sum AS scalar_parent_urlbar_picked_dynamic_sum,
base.base_scalar_parent_urlbar_picked_extension_sum AS scalar_parent_urlbar_picked_extension_sum,
base.base_scalar_parent_urlbar_picked_formhistory_sum AS scalar_parent_urlbar_picked_formhistory_sum,
base.base_scalar_parent_urlbar_picked_history_sum AS scalar_parent_urlbar_picked_history_sum,
base.base_scalar_parent_urlbar_picked_keyword_sum AS scalar_parent_urlbar_picked_keyword_sum,
base.base_scalar_parent_urlbar_picked_remotetab_sum AS scalar_parent_urlbar_picked_remotetab_sum,
base.base_scalar_parent_urlbar_picked_searchengine_sum AS scalar_parent_urlbar_picked_searchengine_sum,
base.base_scalar_parent_urlbar_picked_searchsuggestion_sum AS scalar_parent_urlbar_picked_searchsuggestion_sum,
base.base_scalar_parent_urlbar_picked_switchtab_sum AS scalar_parent_urlbar_picked_switchtab_sum,
base.base_scalar_parent_urlbar_picked_tabtosearch_sum AS scalar_parent_urlbar_picked_tabtosearch_sum,
base.base_scalar_parent_urlbar_picked_tip_sum AS scalar_parent_urlbar_picked_tip_sum,
base.base_scalar_parent_urlbar_picked_topsite_sum AS scalar_parent_urlbar_picked_topsite_sum,
base.base_scalar_parent_urlbar_picked_unknown_sum AS scalar_parent_urlbar_picked_unknown_sum,
base.base_scalar_parent_urlbar_picked_visiturl_sum AS scalar_parent_urlbar_picked_visiturl_sum,
base.base_search_cohort AS search_cohort,
base.base_search_count_abouthome AS search_count_abouthome,
base.base_search_count_alias AS search_count_alias,
base.base_search_count_all AS search_count_all,
base.base_search_count_contextmenu AS search_count_contextmenu,
base.base_search_count_newtab AS search_count_newtab,
base.base_search_count_organic AS search_count_organic,
base.base_search_count_searchbar AS search_count_searchbar,
base.base_search_count_system AS search_count_system,
base.base_search_count_tagged_follow_on AS search_count_tagged_follow_on,
base.base_search_count_tagged_sap AS search_count_tagged_sap,
base.base_search_count_urlbar AS search_count_urlbar,
base.base_search_count_urlbar_handoff AS search_count_urlbar_handoff,
base.base_search_count_urlbar_persisted AS search_count_urlbar_persisted,
base.base_search_count_urlbar_searchmode AS search_count_urlbar_searchmode,
base.base_search_count_webextension AS search_count_webextension,
base.base_search_with_ads_count_all AS search_with_ads_count_all,
base.base_session_restored_mean AS session_restored_mean,
base.base_sessions_started_on_this_day AS sessions_started_on_this_day,
base.base_shutdown_kill_sum AS shutdown_kill_sum,
base.base_socket_crash_count AS socket_crash_count,
base.base_ssl_handshake_result_failure_sum AS ssl_handshake_result_failure_sum,
base.base_ssl_handshake_result_success_sum AS ssl_handshake_result_success_sum,
base.base_startup_profile_selection_first_ping_only AS startup_profile_selection_first_ping_only,
base.base_startup_profile_selection_reason_first AS startup_profile_selection_reason_first,
base.base_subsession_hours_sum AS subsession_hours_sum,
base.base_sync_configured AS sync_configured,
base.base_sync_count_desktop_mean AS sync_count_desktop_mean,
base.base_sync_count_desktop_sum AS sync_count_desktop_sum,
base.base_sync_count_mobile_mean AS sync_count_mobile_mean,
base.base_sync_count_mobile_sum AS sync_count_mobile_sum,
base.base_telemetry_enabled AS telemetry_enabled,
base.base_text_recognition_api_performance_count_sum AS text_recognition_api_performance_count_sum,
base.base_text_recognition_api_performance_sum AS text_recognition_api_performance_sum,
base.base_text_recognition_interaction_timing_count_sum AS text_recognition_interaction_timing_count_sum,
base.base_text_recognition_interaction_timing_sum AS text_recognition_interaction_timing_sum,
base.base_text_recognition_text_length_count_sum AS text_recognition_text_length_count_sum,
base.base_text_recognition_text_length_sum AS text_recognition_text_length_sum,
base.base_timezone_offset AS timezone_offset,
base.base_total_uri_count AS total_uri_count,
base.base_total_uri_count_normal_mode AS total_uri_count_normal_mode,
base.base_total_uri_count_private_mode AS total_uri_count_private_mode,
base.base_trackers_blocked_sum AS trackers_blocked_sum,
base.base_update_auto_download AS update_auto_download,
base.base_update_background AS update_background,
base.base_update_channel AS update_channel,
base.base_update_enabled AS update_enabled,
base.base_user_pref_app_shield_optoutstudies_enabled AS user_pref_app_shield_optoutstudies_enabled,
base.base_user_pref_browser_newtabpage_enabled AS user_pref_browser_newtabpage_enabled,
base.base_user_pref_browser_search_region AS user_pref_browser_search_region,
base.base_user_pref_browser_search_suggest_enabled AS user_pref_browser_search_suggest_enabled,
base.base_user_pref_browser_urlbar_quicksuggest_data_collection_enabled AS user_pref_browser_urlbar_quicksuggest_data_collection_enabled,
base.base_user_pref_browser_urlbar_quicksuggest_onboarding_dialog_choice AS user_pref_browser_urlbar_quicksuggest_onboarding_dialog_choice,
base.base_user_pref_browser_urlbar_show_search_suggestions_first AS user_pref_browser_urlbar_show_search_suggestions_first,
base.base_user_pref_browser_urlbar_suggest_bestmatch AS user_pref_browser_urlbar_suggest_bestmatch,
base.base_user_pref_browser_urlbar_suggest_quicksuggest AS user_pref_browser_urlbar_suggest_quicksuggest,
base.base_user_pref_browser_urlbar_suggest_quicksuggest_nonsponsored AS user_pref_browser_urlbar_suggest_quicksuggest_nonsponsored,
base.base_user_pref_browser_urlbar_suggest_quicksuggest_sponsored AS user_pref_browser_urlbar_suggest_quicksuggest_sponsored,
base.base_user_pref_browser_urlbar_suggest_searches AS user_pref_browser_urlbar_suggest_searches,
base.base_user_pref_browser_widget_in_navbar AS user_pref_browser_widget_in_navbar,
base.base_utility_crash_count AS utility_crash_count,
base.base_vendor AS vendor,
base.base_vr_crash_count AS vr_crash_count,
base.base_web_notification_shown_sum AS web_notification_shown_sum,
base.base_windows_build_number AS windows_build_number,
base.base_windows_ubr AS windows_ubr,
base.base_first_seen_date AS first_seen_date,
base.base_second_seen_date AS second_seen_date,
base.base_submission_date_s3 AS submission_date_s3,
base.base_submission_timestamp_min AS submission_timestamp_min,

                m.legacy_telemetry_client_id AS client_id,
                {% if aggregate_metrics_by._parameter_value == 'day' %}
                m.submission_date AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'week'  %}
                (FORMAT_DATE(
                    '%F',
                    DATE_TRUNC(m.submission_date,
                    WEEK(MONDAY)))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'month'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    m.submission_date)
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'quarter'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    DATE_TRUNC(m.submission_date,
                    QUARTER))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'year'  %}
                (EXTRACT(
                    YEAR FROM m.submission_date)
                ) AS analysis_basis
                {% else %}
                NULL as analysis_basis
                {% endif %}
            FROM
                (
    SELECT
        *
    FROM
        (
    SELECT
        e.* EXCEPT (topsite_tile_interactions),
        topsite_tile_interactions
    FROM
        `moz-fx-data-shared-prod.telemetry.newtab_visits` e
    CROSS JOIN
        UNNEST(e.topsite_tile_interactions) AS topsite_tile_interactions
)
    )
            AS m
            
            INNER JOIN (
                SELECT
                client_id AS base_client_id,
                submission_date AS base_submission_date,
                aborts_content_sum AS base_aborts_content_sum,
aborts_gmplugin_sum AS base_aborts_gmplugin_sum,
aborts_plugin_sum AS base_aborts_plugin_sum,
active_addons_count_mean AS base_active_addons_count_mean,
active_hours_sum AS base_active_hours_sum,
ad_clicks_count_all AS base_ad_clicks_count_all,
addon_compatibility_check_enabled AS base_addon_compatibility_check_enabled,
app_build_id AS base_app_build_id,
app_display_version AS base_app_display_version,
app_name AS base_app_name,
app_version AS base_app_version,
apple_model_id AS base_apple_model_id,
attribution.campaign AS base_attribution__campaign,
attribution.content AS base_attribution__content,
attribution.dlsource AS base_attribution__dlsource,
attribution.dltoken AS base_attribution__dltoken,
attribution.experiment AS base_attribution__experiment,
attribution.medium AS base_attribution__medium,
attribution.source AS base_attribution__source,
attribution.ua AS base_attribution__ua,
attribution.variation AS base_attribution__variation,
blocklist_enabled AS base_blocklist_enabled,
bookmark_migrations_quantity_all AS base_bookmark_migrations_quantity_all,
bookmark_migrations_quantity_chrome AS base_bookmark_migrations_quantity_chrome,
bookmark_migrations_quantity_edge AS base_bookmark_migrations_quantity_edge,
bookmark_migrations_quantity_safari AS base_bookmark_migrations_quantity_safari,
browser_version_info.is_major_release AS base_browser_version_info__is_major_release,
browser_version_info.major_version AS base_browser_version_info__major_version,
browser_version_info.minor_version AS base_browser_version_info__minor_version,
browser_version_info.patch_revision AS base_browser_version_info__patch_revision,
browser_version_info.version AS base_browser_version_info__version,
channel AS base_channel,
city AS base_city,
client_clock_skew_mean AS base_client_clock_skew_mean,
client_submission_latency_mean AS base_client_submission_latency_mean,
content_crash_count AS base_content_crash_count,
contextual_services_quicksuggest_block_dynamic_wikipedia_sum AS base_contextual_services_quicksuggest_block_dynamic_wikipedia_sum,
contextual_services_quicksuggest_block_nonsponsored_bestmatch_sum AS base_contextual_services_quicksuggest_block_nonsponsored_bestmatch_sum,
contextual_services_quicksuggest_block_nonsponsored_sum AS base_contextual_services_quicksuggest_block_nonsponsored_sum,
contextual_services_quicksuggest_block_sponsored_bestmatch_sum AS base_contextual_services_quicksuggest_block_sponsored_bestmatch_sum,
contextual_services_quicksuggest_block_sponsored_sum AS base_contextual_services_quicksuggest_block_sponsored_sum,
contextual_services_quicksuggest_block_weather_sum AS base_contextual_services_quicksuggest_block_weather_sum,
contextual_services_quicksuggest_click_dynamic_wikipedia_sum AS base_contextual_services_quicksuggest_click_dynamic_wikipedia_sum,
contextual_services_quicksuggest_click_nonsponsored_bestmatch_sum AS base_contextual_services_quicksuggest_click_nonsponsored_bestmatch_sum,
contextual_services_quicksuggest_click_nonsponsored_sum AS base_contextual_services_quicksuggest_click_nonsponsored_sum,
contextual_services_quicksuggest_click_sponsored_bestmatch_sum AS base_contextual_services_quicksuggest_click_sponsored_bestmatch_sum,
contextual_services_quicksuggest_click_sponsored_sum AS base_contextual_services_quicksuggest_click_sponsored_sum,
contextual_services_quicksuggest_click_weather_sum AS base_contextual_services_quicksuggest_click_weather_sum,
contextual_services_quicksuggest_help_dynamic_wikipedia_sum AS base_contextual_services_quicksuggest_help_dynamic_wikipedia_sum,
contextual_services_quicksuggest_help_nonsponsored_bestmatch_sum AS base_contextual_services_quicksuggest_help_nonsponsored_bestmatch_sum,
contextual_services_quicksuggest_help_nonsponsored_sum AS base_contextual_services_quicksuggest_help_nonsponsored_sum,
contextual_services_quicksuggest_help_sponsored_bestmatch_sum AS base_contextual_services_quicksuggest_help_sponsored_bestmatch_sum,
contextual_services_quicksuggest_help_sponsored_sum AS base_contextual_services_quicksuggest_help_sponsored_sum,
contextual_services_quicksuggest_help_weather_sum AS base_contextual_services_quicksuggest_help_weather_sum,
contextual_services_quicksuggest_impression_dynamic_wikipedia_sum AS base_contextual_services_quicksuggest_impression_dynamic_wikipedia_sum,
contextual_services_quicksuggest_impression_nonsponsored_bestmatch_sum AS base_contextual_services_quicksuggest_impression_nonsponsored_bestmatch_sum,
contextual_services_quicksuggest_impression_nonsponsored_sum AS base_contextual_services_quicksuggest_impression_nonsponsored_sum,
contextual_services_quicksuggest_impression_sponsored_bestmatch_sum AS base_contextual_services_quicksuggest_impression_sponsored_bestmatch_sum,
contextual_services_quicksuggest_impression_sponsored_sum AS base_contextual_services_quicksuggest_impression_sponsored_sum,
contextual_services_quicksuggest_impression_weather_sum AS base_contextual_services_quicksuggest_impression_weather_sum,
contextual_services_topsites_click_sum AS base_contextual_services_topsites_click_sum,
contextual_services_topsites_impression_sum AS base_contextual_services_topsites_impression_sum,
country AS base_country,
cpu_cores AS base_cpu_cores,
cpu_count AS base_cpu_count,
cpu_family AS base_cpu_family,
cpu_l2_cache_kb AS base_cpu_l2_cache_kb,
cpu_l3_cache_kb AS base_cpu_l3_cache_kb,
cpu_model AS base_cpu_model,
cpu_speed_mhz AS base_cpu_speed_mhz,
cpu_stepping AS base_cpu_stepping,
cpu_vendor AS base_cpu_vendor,
crash_submit_attempt_content_sum AS base_crash_submit_attempt_content_sum,
crash_submit_attempt_main_sum AS base_crash_submit_attempt_main_sum,
crash_submit_attempt_plugin_sum AS base_crash_submit_attempt_plugin_sum,
crash_submit_success_content_sum AS base_crash_submit_success_content_sum,
crash_submit_success_main_sum AS base_crash_submit_success_main_sum,
crash_submit_success_plugin_sum AS base_crash_submit_success_plugin_sum,
crashes_detected_content_sum AS base_crashes_detected_content_sum,
crashes_detected_gmplugin_sum AS base_crashes_detected_gmplugin_sum,
crashes_detected_plugin_sum AS base_crashes_detected_plugin_sum,
default_private_search_engine AS base_default_private_search_engine,
default_private_search_engine_data_load_path AS base_default_private_search_engine_data_load_path,
default_private_search_engine_data_name AS base_default_private_search_engine_data_name,
default_private_search_engine_data_origin AS base_default_private_search_engine_data_origin,
default_private_search_engine_data_submission_url AS base_default_private_search_engine_data_submission_url,
default_search_engine AS base_default_search_engine,
default_search_engine_data_load_path AS base_default_search_engine_data_load_path,
default_search_engine_data_name AS base_default_search_engine_data_name,
default_search_engine_data_origin AS base_default_search_engine_data_origin,
default_search_engine_data_submission_url AS base_default_search_engine_data_submission_url,
devtools_toolbox_opened_count_sum AS base_devtools_toolbox_opened_count_sum,
distribution_id AS base_distribution_id,
distribution_version AS base_distribution_version,
distributor AS base_distributor,
distributor_channel AS base_distributor_channel,
dom_parentprocess_private_window_used AS base_dom_parentprocess_private_window_used,
e10s_enabled AS base_e10s_enabled,
env_build_arch AS base_env_build_arch,
env_build_id AS base_env_build_id,
env_build_platform_version AS base_env_build_platform_version,
env_build_version AS base_env_build_version,
env_build_xpcom_abi AS base_env_build_xpcom_abi,
first_document_id AS base_first_document_id,
first_paint_mean AS base_first_paint_mean,
flash_version AS base_flash_version,
fxa_configured AS base_fxa_configured,
geo_db_version AS base_geo_db_version,
geo_subdivision1 AS base_geo_subdivision1,
geo_subdivision2 AS base_geo_subdivision2,
gfx_features_advanced_layers_status AS base_gfx_features_advanced_layers_status,
gfx_features_d2d_status AS base_gfx_features_d2d_status,
gfx_features_d3d11_status AS base_gfx_features_d3d11_status,
gfx_features_gpu_process_status AS base_gfx_features_gpu_process_status,
gpu_crash_count AS base_gpu_crash_count,
has_adblocker_enabled AS base_has_adblocker_enabled,
histogram_parent_devtools_aboutdebugging_opened_count_sum AS base_histogram_parent_devtools_aboutdebugging_opened_count_sum,
histogram_parent_devtools_animationinspector_opened_count_sum AS base_histogram_parent_devtools_animationinspector_opened_count_sum,
histogram_parent_devtools_browserconsole_opened_count_sum AS base_histogram_parent_devtools_browserconsole_opened_count_sum,
histogram_parent_devtools_canvasdebugger_opened_count_sum AS base_histogram_parent_devtools_canvasdebugger_opened_count_sum,
histogram_parent_devtools_computedview_opened_count_sum AS base_histogram_parent_devtools_computedview_opened_count_sum,
histogram_parent_devtools_custom_opened_count_sum AS base_histogram_parent_devtools_custom_opened_count_sum,
histogram_parent_devtools_dom_opened_count_sum AS base_histogram_parent_devtools_dom_opened_count_sum,
histogram_parent_devtools_eyedropper_opened_count_sum AS base_histogram_parent_devtools_eyedropper_opened_count_sum,
histogram_parent_devtools_fontinspector_opened_count_sum AS base_histogram_parent_devtools_fontinspector_opened_count_sum,
histogram_parent_devtools_inspector_opened_count_sum AS base_histogram_parent_devtools_inspector_opened_count_sum,
histogram_parent_devtools_jsbrowserdebugger_opened_count_sum AS base_histogram_parent_devtools_jsbrowserdebugger_opened_count_sum,
histogram_parent_devtools_jsdebugger_opened_count_sum AS base_histogram_parent_devtools_jsdebugger_opened_count_sum,
histogram_parent_devtools_jsprofiler_opened_count_sum AS base_histogram_parent_devtools_jsprofiler_opened_count_sum,
histogram_parent_devtools_layoutview_opened_count_sum AS base_histogram_parent_devtools_layoutview_opened_count_sum,
histogram_parent_devtools_memory_opened_count_sum AS base_histogram_parent_devtools_memory_opened_count_sum,
histogram_parent_devtools_menu_eyedropper_opened_count_sum AS base_histogram_parent_devtools_menu_eyedropper_opened_count_sum,
histogram_parent_devtools_netmonitor_opened_count_sum AS base_histogram_parent_devtools_netmonitor_opened_count_sum,
histogram_parent_devtools_options_opened_count_sum AS base_histogram_parent_devtools_options_opened_count_sum,
histogram_parent_devtools_paintflashing_opened_count_sum AS base_histogram_parent_devtools_paintflashing_opened_count_sum,
histogram_parent_devtools_picker_eyedropper_opened_count_sum AS base_histogram_parent_devtools_picker_eyedropper_opened_count_sum,
histogram_parent_devtools_responsive_opened_count_sum AS base_histogram_parent_devtools_responsive_opened_count_sum,
histogram_parent_devtools_ruleview_opened_count_sum AS base_histogram_parent_devtools_ruleview_opened_count_sum,
histogram_parent_devtools_scratchpad_opened_count_sum AS base_histogram_parent_devtools_scratchpad_opened_count_sum,
histogram_parent_devtools_scratchpad_window_opened_count_sum AS base_histogram_parent_devtools_scratchpad_window_opened_count_sum,
histogram_parent_devtools_shadereditor_opened_count_sum AS base_histogram_parent_devtools_shadereditor_opened_count_sum,
histogram_parent_devtools_storage_opened_count_sum AS base_histogram_parent_devtools_storage_opened_count_sum,
histogram_parent_devtools_styleeditor_opened_count_sum AS base_histogram_parent_devtools_styleeditor_opened_count_sum,
histogram_parent_devtools_webaudioeditor_opened_count_sum AS base_histogram_parent_devtools_webaudioeditor_opened_count_sum,
histogram_parent_devtools_webconsole_opened_count_sum AS base_histogram_parent_devtools_webconsole_opened_count_sum,
histogram_parent_devtools_webide_opened_count_sum AS base_histogram_parent_devtools_webide_opened_count_sum,
history_migrations_quantity_all AS base_history_migrations_quantity_all,
history_migrations_quantity_chrome AS base_history_migrations_quantity_chrome,
history_migrations_quantity_edge AS base_history_migrations_quantity_edge,
history_migrations_quantity_safari AS base_history_migrations_quantity_safari,
install_year AS base_install_year,
is_default_browser AS base_is_default_browser,
is_wow64 AS base_is_wow64,
isp_name AS base_isp_name,
isp_organization AS base_isp_organization,
locale AS base_locale,
logins_migrations_quantity_all AS base_logins_migrations_quantity_all,
logins_migrations_quantity_chrome AS base_logins_migrations_quantity_chrome,
logins_migrations_quantity_edge AS base_logins_migrations_quantity_edge,
logins_migrations_quantity_safari AS base_logins_migrations_quantity_safari,
main_crash_count AS base_main_crash_count,
max_subsession_counter AS base_max_subsession_counter,
media_play_time_ms_audio_sum AS base_media_play_time_ms_audio_sum,
media_play_time_ms_video_sum AS base_media_play_time_ms_video_sum,
memory_mb AS base_memory_mb,
min_subsession_counter AS base_min_subsession_counter,
n_created_pictureinpicture AS base_n_created_pictureinpicture,
n_logged_event AS base_n_logged_event,
n_viewed_protection_report AS base_n_viewed_protection_report,
normalized_channel AS base_normalized_channel,
normalized_os_version AS base_normalized_os_version,
os AS base_os,
os_environment_is_taskbar_pinned_any AS base_os_environment_is_taskbar_pinned_any,
os_environment_is_taskbar_pinned_private AS base_os_environment_is_taskbar_pinned_private,
os_environment_is_taskbar_pinned_private_any AS base_os_environment_is_taskbar_pinned_private_any,
os_service_pack_major AS base_os_service_pack_major,
os_service_pack_minor AS base_os_service_pack_minor,
os_version AS base_os_version,
partner_id AS base_partner_id,
pings_aggregated_by_this_row AS base_pings_aggregated_by_this_row,
places_bookmarks_count_mean AS base_places_bookmarks_count_mean,
places_bookmarks_searchbar_cumulative_searches_sum AS base_places_bookmarks_searchbar_cumulative_searches_sum,
places_library_cumulative_bookmark_searches_sum AS base_places_library_cumulative_bookmark_searches_sum,
places_library_cumulative_history_searches_sum AS base_places_library_cumulative_history_searches_sum,
places_pages_count_mean AS base_places_pages_count_mean,
places_previousday_visits_mean AS base_places_previousday_visits_mean,
places_searchbar_cumulative_filter_count_sum AS base_places_searchbar_cumulative_filter_count_sum,
places_searchbar_cumulative_searches_sum AS base_places_searchbar_cumulative_searches_sum,
plugin_hangs_sum AS base_plugin_hangs_sum,
plugins_infobar_allow_sum AS base_plugins_infobar_allow_sum,
plugins_infobar_block_sum AS base_plugins_infobar_block_sum,
plugins_infobar_shown_sum AS base_plugins_infobar_shown_sum,
plugins_notification_shown_sum AS base_plugins_notification_shown_sum,
previous_build_id AS base_previous_build_id,
profile_age_in_days AS base_profile_age_in_days,
profile_creation_date AS base_profile_creation_date,
push_api_notify_sum AS base_push_api_notify_sum,
rdd_crash_count AS base_rdd_crash_count,
sample_id AS base_sample_id,
sandbox_effective_content_process_level AS base_sandbox_effective_content_process_level,
scalar_a11y_hcm_background AS base_scalar_a11y_hcm_background,
scalar_a11y_hcm_foreground AS base_scalar_a11y_hcm_foreground,
scalar_combined_webrtc_nicer_stun_retransmits_sum AS base_scalar_combined_webrtc_nicer_stun_retransmits_sum,
scalar_combined_webrtc_nicer_turn_401s_sum AS base_scalar_combined_webrtc_nicer_turn_401s_sum,
scalar_combined_webrtc_nicer_turn_403s_sum AS base_scalar_combined_webrtc_nicer_turn_403s_sum,
scalar_combined_webrtc_nicer_turn_438s_sum AS base_scalar_combined_webrtc_nicer_turn_438s_sum,
scalar_content_navigator_storage_estimate_count_sum AS base_scalar_content_navigator_storage_estimate_count_sum,
scalar_content_navigator_storage_persist_count_sum AS base_scalar_content_navigator_storage_persist_count_sum,
scalar_parent_aushelper_websense_reg_version AS base_scalar_parent_aushelper_websense_reg_version,
scalar_parent_browser_engagement_max_concurrent_tab_count_max AS base_scalar_parent_browser_engagement_max_concurrent_tab_count_max,
scalar_parent_browser_engagement_max_concurrent_window_count_max AS base_scalar_parent_browser_engagement_max_concurrent_window_count_max,
scalar_parent_browser_engagement_tab_open_event_count_sum AS base_scalar_parent_browser_engagement_tab_open_event_count_sum,
scalar_parent_browser_engagement_total_uri_count_normal_and_private_mode_sum AS base_scalar_parent_browser_engagement_total_uri_count_normal_and_private_mode_sum,
scalar_parent_browser_engagement_total_uri_count_sum AS base_scalar_parent_browser_engagement_total_uri_count_sum,
scalar_parent_browser_engagement_unfiltered_uri_count_sum AS base_scalar_parent_browser_engagement_unfiltered_uri_count_sum,
scalar_parent_browser_engagement_unique_domains_count_max AS base_scalar_parent_browser_engagement_unique_domains_count_max,
scalar_parent_browser_engagement_unique_domains_count_mean AS base_scalar_parent_browser_engagement_unique_domains_count_mean,
scalar_parent_browser_engagement_window_open_event_count_sum AS base_scalar_parent_browser_engagement_window_open_event_count_sum,
scalar_parent_browser_ui_interaction_textrecognition_error_sum AS base_scalar_parent_browser_ui_interaction_textrecognition_error_sum,
scalar_parent_devtools_accessibility_node_inspected_count_sum AS base_scalar_parent_devtools_accessibility_node_inspected_count_sum,
scalar_parent_devtools_accessibility_opened_count_sum AS base_scalar_parent_devtools_accessibility_opened_count_sum,
scalar_parent_devtools_accessibility_picker_used_count_sum AS base_scalar_parent_devtools_accessibility_picker_used_count_sum,
scalar_parent_devtools_accessibility_service_enabled_count_sum AS base_scalar_parent_devtools_accessibility_service_enabled_count_sum,
scalar_parent_devtools_copy_full_css_selector_opened_sum AS base_scalar_parent_devtools_copy_full_css_selector_opened_sum,
scalar_parent_devtools_copy_unique_css_selector_opened_sum AS base_scalar_parent_devtools_copy_unique_css_selector_opened_sum,
scalar_parent_devtools_toolbar_eyedropper_opened_sum AS base_scalar_parent_devtools_toolbar_eyedropper_opened_sum,
scalar_parent_navigator_storage_estimate_count_sum AS base_scalar_parent_navigator_storage_estimate_count_sum,
scalar_parent_navigator_storage_persist_count_sum AS base_scalar_parent_navigator_storage_persist_count_sum,
scalar_parent_os_environment_is_taskbar_pinned AS base_scalar_parent_os_environment_is_taskbar_pinned,
scalar_parent_os_environment_launched_via_desktop AS base_scalar_parent_os_environment_launched_via_desktop,
scalar_parent_os_environment_launched_via_other AS base_scalar_parent_os_environment_launched_via_other,
scalar_parent_os_environment_launched_via_other_shortcut AS base_scalar_parent_os_environment_launched_via_other_shortcut,
scalar_parent_os_environment_launched_via_start_menu AS base_scalar_parent_os_environment_launched_via_start_menu,
scalar_parent_os_environment_launched_via_taskbar AS base_scalar_parent_os_environment_launched_via_taskbar,
scalar_parent_os_environment_launched_via_taskbar_private AS base_scalar_parent_os_environment_launched_via_taskbar_private,
scalar_parent_storage_sync_api_usage_extensions_using_sum AS base_scalar_parent_storage_sync_api_usage_extensions_using_sum,
scalar_parent_urlbar_impression_autofill_about_sum AS base_scalar_parent_urlbar_impression_autofill_about_sum,
scalar_parent_urlbar_impression_autofill_adaptive_sum AS base_scalar_parent_urlbar_impression_autofill_adaptive_sum,
scalar_parent_urlbar_impression_autofill_origin_sum AS base_scalar_parent_urlbar_impression_autofill_origin_sum,
scalar_parent_urlbar_impression_autofill_other_sum AS base_scalar_parent_urlbar_impression_autofill_other_sum,
scalar_parent_urlbar_impression_autofill_preloaded_sum AS base_scalar_parent_urlbar_impression_autofill_preloaded_sum,
scalar_parent_urlbar_impression_autofill_url_sum AS base_scalar_parent_urlbar_impression_autofill_url_sum,
scalar_parent_urlbar_picked_autofill_about_sum AS base_scalar_parent_urlbar_picked_autofill_about_sum,
scalar_parent_urlbar_picked_autofill_adaptive_sum AS base_scalar_parent_urlbar_picked_autofill_adaptive_sum,
scalar_parent_urlbar_picked_autofill_origin_sum AS base_scalar_parent_urlbar_picked_autofill_origin_sum,
scalar_parent_urlbar_picked_autofill_other_sum AS base_scalar_parent_urlbar_picked_autofill_other_sum,
scalar_parent_urlbar_picked_autofill_preloaded_sum AS base_scalar_parent_urlbar_picked_autofill_preloaded_sum,
scalar_parent_urlbar_picked_autofill_sum AS base_scalar_parent_urlbar_picked_autofill_sum,
scalar_parent_urlbar_picked_autofill_url_sum AS base_scalar_parent_urlbar_picked_autofill_url_sum,
scalar_parent_urlbar_picked_bookmark_sum AS base_scalar_parent_urlbar_picked_bookmark_sum,
scalar_parent_urlbar_picked_dynamic_sum AS base_scalar_parent_urlbar_picked_dynamic_sum,
scalar_parent_urlbar_picked_extension_sum AS base_scalar_parent_urlbar_picked_extension_sum,
scalar_parent_urlbar_picked_formhistory_sum AS base_scalar_parent_urlbar_picked_formhistory_sum,
scalar_parent_urlbar_picked_history_sum AS base_scalar_parent_urlbar_picked_history_sum,
scalar_parent_urlbar_picked_keyword_sum AS base_scalar_parent_urlbar_picked_keyword_sum,
scalar_parent_urlbar_picked_remotetab_sum AS base_scalar_parent_urlbar_picked_remotetab_sum,
scalar_parent_urlbar_picked_searchengine_sum AS base_scalar_parent_urlbar_picked_searchengine_sum,
scalar_parent_urlbar_picked_searchsuggestion_sum AS base_scalar_parent_urlbar_picked_searchsuggestion_sum,
scalar_parent_urlbar_picked_switchtab_sum AS base_scalar_parent_urlbar_picked_switchtab_sum,
scalar_parent_urlbar_picked_tabtosearch_sum AS base_scalar_parent_urlbar_picked_tabtosearch_sum,
scalar_parent_urlbar_picked_tip_sum AS base_scalar_parent_urlbar_picked_tip_sum,
scalar_parent_urlbar_picked_topsite_sum AS base_scalar_parent_urlbar_picked_topsite_sum,
scalar_parent_urlbar_picked_unknown_sum AS base_scalar_parent_urlbar_picked_unknown_sum,
scalar_parent_urlbar_picked_visiturl_sum AS base_scalar_parent_urlbar_picked_visiturl_sum,
search_cohort AS base_search_cohort,
search_count_abouthome AS base_search_count_abouthome,
search_count_alias AS base_search_count_alias,
search_count_all AS base_search_count_all,
search_count_contextmenu AS base_search_count_contextmenu,
search_count_newtab AS base_search_count_newtab,
search_count_organic AS base_search_count_organic,
search_count_searchbar AS base_search_count_searchbar,
search_count_system AS base_search_count_system,
search_count_tagged_follow_on AS base_search_count_tagged_follow_on,
search_count_tagged_sap AS base_search_count_tagged_sap,
search_count_urlbar AS base_search_count_urlbar,
search_count_urlbar_handoff AS base_search_count_urlbar_handoff,
search_count_urlbar_persisted AS base_search_count_urlbar_persisted,
search_count_urlbar_searchmode AS base_search_count_urlbar_searchmode,
search_count_webextension AS base_search_count_webextension,
search_with_ads_count_all AS base_search_with_ads_count_all,
session_restored_mean AS base_session_restored_mean,
sessions_started_on_this_day AS base_sessions_started_on_this_day,
shutdown_kill_sum AS base_shutdown_kill_sum,
socket_crash_count AS base_socket_crash_count,
ssl_handshake_result_failure_sum AS base_ssl_handshake_result_failure_sum,
ssl_handshake_result_success_sum AS base_ssl_handshake_result_success_sum,
startup_profile_selection_first_ping_only AS base_startup_profile_selection_first_ping_only,
startup_profile_selection_reason_first AS base_startup_profile_selection_reason_first,
subsession_hours_sum AS base_subsession_hours_sum,
sync_configured AS base_sync_configured,
sync_count_desktop_mean AS base_sync_count_desktop_mean,
sync_count_desktop_sum AS base_sync_count_desktop_sum,
sync_count_mobile_mean AS base_sync_count_mobile_mean,
sync_count_mobile_sum AS base_sync_count_mobile_sum,
telemetry_enabled AS base_telemetry_enabled,
text_recognition_api_performance_count_sum AS base_text_recognition_api_performance_count_sum,
text_recognition_api_performance_sum AS base_text_recognition_api_performance_sum,
text_recognition_interaction_timing_count_sum AS base_text_recognition_interaction_timing_count_sum,
text_recognition_interaction_timing_sum AS base_text_recognition_interaction_timing_sum,
text_recognition_text_length_count_sum AS base_text_recognition_text_length_count_sum,
text_recognition_text_length_sum AS base_text_recognition_text_length_sum,
timezone_offset AS base_timezone_offset,
total_uri_count AS base_total_uri_count,
total_uri_count_normal_mode AS base_total_uri_count_normal_mode,
total_uri_count_private_mode AS base_total_uri_count_private_mode,
trackers_blocked_sum AS base_trackers_blocked_sum,
update_auto_download AS base_update_auto_download,
update_background AS base_update_background,
update_channel AS base_update_channel,
update_enabled AS base_update_enabled,
user_pref_app_shield_optoutstudies_enabled AS base_user_pref_app_shield_optoutstudies_enabled,
user_pref_browser_newtabpage_enabled AS base_user_pref_browser_newtabpage_enabled,
user_pref_browser_search_region AS base_user_pref_browser_search_region,
user_pref_browser_search_suggest_enabled AS base_user_pref_browser_search_suggest_enabled,
user_pref_browser_urlbar_quicksuggest_data_collection_enabled AS base_user_pref_browser_urlbar_quicksuggest_data_collection_enabled,
user_pref_browser_urlbar_quicksuggest_onboarding_dialog_choice AS base_user_pref_browser_urlbar_quicksuggest_onboarding_dialog_choice,
user_pref_browser_urlbar_show_search_suggestions_first AS base_user_pref_browser_urlbar_show_search_suggestions_first,
user_pref_browser_urlbar_suggest_bestmatch AS base_user_pref_browser_urlbar_suggest_bestmatch,
user_pref_browser_urlbar_suggest_quicksuggest AS base_user_pref_browser_urlbar_suggest_quicksuggest,
user_pref_browser_urlbar_suggest_quicksuggest_nonsponsored AS base_user_pref_browser_urlbar_suggest_quicksuggest_nonsponsored,
user_pref_browser_urlbar_suggest_quicksuggest_sponsored AS base_user_pref_browser_urlbar_suggest_quicksuggest_sponsored,
user_pref_browser_urlbar_suggest_searches AS base_user_pref_browser_urlbar_suggest_searches,
user_pref_browser_widget_in_navbar AS base_user_pref_browser_widget_in_navbar,
utility_crash_count AS base_utility_crash_count,
vendor AS base_vendor,
vr_crash_count AS base_vr_crash_count,
web_notification_shown_sum AS base_web_notification_shown_sum,
windows_build_number AS base_windows_build_number,
windows_ubr AS base_windows_ubr,
first_seen_date AS base_first_seen_date,
second_seen_date AS base_second_seen_date,
submission_date_s3 AS base_submission_date_s3,
submission_timestamp_min AS base_submission_timestamp_min,

                FROM
                mozdata.telemetry.clients_daily
                WHERE
                submission_date BETWEEN
                COALESCE(
                    SAFE_CAST(
                    {% date_start submission_date %} AS DATE),
                CURRENT_DATE()) AND
                COALESCE(
                    SAFE_CAST(
                        {% date_end submission_date %} AS DATE
                ), CURRENT_DATE())
            ) base
            ON
                base.base_submission_date = m.submission_date
                 AND base.base_client_id = m.legacy_telemetry_client_id
            WHERE base.base_submission_date BETWEEN
            COALESCE(
                SAFE_CAST(
                    {% date_start submission_date %} AS DATE
            ), CURRENT_DATE()) AND
            COALESCE(
                SAFE_CAST(
                    {% date_end submission_date %} AS DATE
                ), CURRENT_DATE())
            AND
                base.base_sample_id < {% parameter sampling %}
            
            AND
            m.submission_date
            BETWEEN
            COALESCE(
                SAFE_CAST(
                    {% date_start submission_date %} AS DATE
                ), CURRENT_DATE()) AND
            COALESCE(
                SAFE_CAST(
                    {% date_end submission_date %} AS DATE
                ), CURRENT_DATE())
            GROUP BY
                aborts_content_sum,
aborts_gmplugin_sum,
aborts_plugin_sum,
active_addons_count_mean,
active_hours_sum,
ad_clicks_count_all,
addon_compatibility_check_enabled,
app_build_id,
app_display_version,
app_name,
app_version,
apple_model_id,
attribution__campaign,
attribution__content,
attribution__dlsource,
attribution__dltoken,
attribution__experiment,
attribution__medium,
attribution__source,
attribution__ua,
attribution__variation,
blocklist_enabled,
bookmark_migrations_quantity_all,
bookmark_migrations_quantity_chrome,
bookmark_migrations_quantity_edge,
bookmark_migrations_quantity_safari,
browser_version_info__is_major_release,
browser_version_info__major_version,
browser_version_info__minor_version,
browser_version_info__patch_revision,
browser_version_info__version,
channel,
city,
client_clock_skew_mean,
client_submission_latency_mean,
content_crash_count,
contextual_services_quicksuggest_block_dynamic_wikipedia_sum,
contextual_services_quicksuggest_block_nonsponsored_bestmatch_sum,
contextual_services_quicksuggest_block_nonsponsored_sum,
contextual_services_quicksuggest_block_sponsored_bestmatch_sum,
contextual_services_quicksuggest_block_sponsored_sum,
contextual_services_quicksuggest_block_weather_sum,
contextual_services_quicksuggest_click_dynamic_wikipedia_sum,
contextual_services_quicksuggest_click_nonsponsored_bestmatch_sum,
contextual_services_quicksuggest_click_nonsponsored_sum,
contextual_services_quicksuggest_click_sponsored_bestmatch_sum,
contextual_services_quicksuggest_click_sponsored_sum,
contextual_services_quicksuggest_click_weather_sum,
contextual_services_quicksuggest_help_dynamic_wikipedia_sum,
contextual_services_quicksuggest_help_nonsponsored_bestmatch_sum,
contextual_services_quicksuggest_help_nonsponsored_sum,
contextual_services_quicksuggest_help_sponsored_bestmatch_sum,
contextual_services_quicksuggest_help_sponsored_sum,
contextual_services_quicksuggest_help_weather_sum,
contextual_services_quicksuggest_impression_dynamic_wikipedia_sum,
contextual_services_quicksuggest_impression_nonsponsored_bestmatch_sum,
contextual_services_quicksuggest_impression_nonsponsored_sum,
contextual_services_quicksuggest_impression_sponsored_bestmatch_sum,
contextual_services_quicksuggest_impression_sponsored_sum,
contextual_services_quicksuggest_impression_weather_sum,
contextual_services_topsites_click_sum,
contextual_services_topsites_impression_sum,
country,
cpu_cores,
cpu_count,
cpu_family,
cpu_l2_cache_kb,
cpu_l3_cache_kb,
cpu_model,
cpu_speed_mhz,
cpu_stepping,
cpu_vendor,
crash_submit_attempt_content_sum,
crash_submit_attempt_main_sum,
crash_submit_attempt_plugin_sum,
crash_submit_success_content_sum,
crash_submit_success_main_sum,
crash_submit_success_plugin_sum,
crashes_detected_content_sum,
crashes_detected_gmplugin_sum,
crashes_detected_plugin_sum,
default_private_search_engine,
default_private_search_engine_data_load_path,
default_private_search_engine_data_name,
default_private_search_engine_data_origin,
default_private_search_engine_data_submission_url,
default_search_engine,
default_search_engine_data_load_path,
default_search_engine_data_name,
default_search_engine_data_origin,
default_search_engine_data_submission_url,
devtools_toolbox_opened_count_sum,
distribution_id,
distribution_version,
distributor,
distributor_channel,
dom_parentprocess_private_window_used,
e10s_enabled,
env_build_arch,
env_build_id,
env_build_platform_version,
env_build_version,
env_build_xpcom_abi,
first_document_id,
first_paint_mean,
flash_version,
fxa_configured,
geo_db_version,
geo_subdivision1,
geo_subdivision2,
gfx_features_advanced_layers_status,
gfx_features_d2d_status,
gfx_features_d3d11_status,
gfx_features_gpu_process_status,
gpu_crash_count,
has_adblocker_enabled,
histogram_parent_devtools_aboutdebugging_opened_count_sum,
histogram_parent_devtools_animationinspector_opened_count_sum,
histogram_parent_devtools_browserconsole_opened_count_sum,
histogram_parent_devtools_canvasdebugger_opened_count_sum,
histogram_parent_devtools_computedview_opened_count_sum,
histogram_parent_devtools_custom_opened_count_sum,
histogram_parent_devtools_dom_opened_count_sum,
histogram_parent_devtools_eyedropper_opened_count_sum,
histogram_parent_devtools_fontinspector_opened_count_sum,
histogram_parent_devtools_inspector_opened_count_sum,
histogram_parent_devtools_jsbrowserdebugger_opened_count_sum,
histogram_parent_devtools_jsdebugger_opened_count_sum,
histogram_parent_devtools_jsprofiler_opened_count_sum,
histogram_parent_devtools_layoutview_opened_count_sum,
histogram_parent_devtools_memory_opened_count_sum,
histogram_parent_devtools_menu_eyedropper_opened_count_sum,
histogram_parent_devtools_netmonitor_opened_count_sum,
histogram_parent_devtools_options_opened_count_sum,
histogram_parent_devtools_paintflashing_opened_count_sum,
histogram_parent_devtools_picker_eyedropper_opened_count_sum,
histogram_parent_devtools_responsive_opened_count_sum,
histogram_parent_devtools_ruleview_opened_count_sum,
histogram_parent_devtools_scratchpad_opened_count_sum,
histogram_parent_devtools_scratchpad_window_opened_count_sum,
histogram_parent_devtools_shadereditor_opened_count_sum,
histogram_parent_devtools_storage_opened_count_sum,
histogram_parent_devtools_styleeditor_opened_count_sum,
histogram_parent_devtools_webaudioeditor_opened_count_sum,
histogram_parent_devtools_webconsole_opened_count_sum,
histogram_parent_devtools_webide_opened_count_sum,
history_migrations_quantity_all,
history_migrations_quantity_chrome,
history_migrations_quantity_edge,
history_migrations_quantity_safari,
install_year,
is_default_browser,
is_wow64,
isp_name,
isp_organization,
locale,
logins_migrations_quantity_all,
logins_migrations_quantity_chrome,
logins_migrations_quantity_edge,
logins_migrations_quantity_safari,
main_crash_count,
max_subsession_counter,
media_play_time_ms_audio_sum,
media_play_time_ms_video_sum,
memory_mb,
min_subsession_counter,
n_created_pictureinpicture,
n_logged_event,
n_viewed_protection_report,
normalized_channel,
normalized_os_version,
os,
os_environment_is_taskbar_pinned_any,
os_environment_is_taskbar_pinned_private,
os_environment_is_taskbar_pinned_private_any,
os_service_pack_major,
os_service_pack_minor,
os_version,
partner_id,
pings_aggregated_by_this_row,
places_bookmarks_count_mean,
places_bookmarks_searchbar_cumulative_searches_sum,
places_library_cumulative_bookmark_searches_sum,
places_library_cumulative_history_searches_sum,
places_pages_count_mean,
places_previousday_visits_mean,
places_searchbar_cumulative_filter_count_sum,
places_searchbar_cumulative_searches_sum,
plugin_hangs_sum,
plugins_infobar_allow_sum,
plugins_infobar_block_sum,
plugins_infobar_shown_sum,
plugins_notification_shown_sum,
previous_build_id,
profile_age_in_days,
profile_creation_date,
push_api_notify_sum,
rdd_crash_count,
sample_id,
sandbox_effective_content_process_level,
scalar_a11y_hcm_background,
scalar_a11y_hcm_foreground,
scalar_combined_webrtc_nicer_stun_retransmits_sum,
scalar_combined_webrtc_nicer_turn_401s_sum,
scalar_combined_webrtc_nicer_turn_403s_sum,
scalar_combined_webrtc_nicer_turn_438s_sum,
scalar_content_navigator_storage_estimate_count_sum,
scalar_content_navigator_storage_persist_count_sum,
scalar_parent_aushelper_websense_reg_version,
scalar_parent_browser_engagement_max_concurrent_tab_count_max,
scalar_parent_browser_engagement_max_concurrent_window_count_max,
scalar_parent_browser_engagement_tab_open_event_count_sum,
scalar_parent_browser_engagement_total_uri_count_normal_and_private_mode_sum,
scalar_parent_browser_engagement_total_uri_count_sum,
scalar_parent_browser_engagement_unfiltered_uri_count_sum,
scalar_parent_browser_engagement_unique_domains_count_max,
scalar_parent_browser_engagement_unique_domains_count_mean,
scalar_parent_browser_engagement_window_open_event_count_sum,
scalar_parent_browser_ui_interaction_textrecognition_error_sum,
scalar_parent_devtools_accessibility_node_inspected_count_sum,
scalar_parent_devtools_accessibility_opened_count_sum,
scalar_parent_devtools_accessibility_picker_used_count_sum,
scalar_parent_devtools_accessibility_service_enabled_count_sum,
scalar_parent_devtools_copy_full_css_selector_opened_sum,
scalar_parent_devtools_copy_unique_css_selector_opened_sum,
scalar_parent_devtools_toolbar_eyedropper_opened_sum,
scalar_parent_navigator_storage_estimate_count_sum,
scalar_parent_navigator_storage_persist_count_sum,
scalar_parent_os_environment_is_taskbar_pinned,
scalar_parent_os_environment_launched_via_desktop,
scalar_parent_os_environment_launched_via_other,
scalar_parent_os_environment_launched_via_other_shortcut,
scalar_parent_os_environment_launched_via_start_menu,
scalar_parent_os_environment_launched_via_taskbar,
scalar_parent_os_environment_launched_via_taskbar_private,
scalar_parent_storage_sync_api_usage_extensions_using_sum,
scalar_parent_urlbar_impression_autofill_about_sum,
scalar_parent_urlbar_impression_autofill_adaptive_sum,
scalar_parent_urlbar_impression_autofill_origin_sum,
scalar_parent_urlbar_impression_autofill_other_sum,
scalar_parent_urlbar_impression_autofill_preloaded_sum,
scalar_parent_urlbar_impression_autofill_url_sum,
scalar_parent_urlbar_picked_autofill_about_sum,
scalar_parent_urlbar_picked_autofill_adaptive_sum,
scalar_parent_urlbar_picked_autofill_origin_sum,
scalar_parent_urlbar_picked_autofill_other_sum,
scalar_parent_urlbar_picked_autofill_preloaded_sum,
scalar_parent_urlbar_picked_autofill_sum,
scalar_parent_urlbar_picked_autofill_url_sum,
scalar_parent_urlbar_picked_bookmark_sum,
scalar_parent_urlbar_picked_dynamic_sum,
scalar_parent_urlbar_picked_extension_sum,
scalar_parent_urlbar_picked_formhistory_sum,
scalar_parent_urlbar_picked_history_sum,
scalar_parent_urlbar_picked_keyword_sum,
scalar_parent_urlbar_picked_remotetab_sum,
scalar_parent_urlbar_picked_searchengine_sum,
scalar_parent_urlbar_picked_searchsuggestion_sum,
scalar_parent_urlbar_picked_switchtab_sum,
scalar_parent_urlbar_picked_tabtosearch_sum,
scalar_parent_urlbar_picked_tip_sum,
scalar_parent_urlbar_picked_topsite_sum,
scalar_parent_urlbar_picked_unknown_sum,
scalar_parent_urlbar_picked_visiturl_sum,
search_cohort,
search_count_abouthome,
search_count_alias,
search_count_all,
search_count_contextmenu,
search_count_newtab,
search_count_organic,
search_count_searchbar,
search_count_system,
search_count_tagged_follow_on,
search_count_tagged_sap,
search_count_urlbar,
search_count_urlbar_handoff,
search_count_urlbar_persisted,
search_count_urlbar_searchmode,
search_count_webextension,
search_with_ads_count_all,
session_restored_mean,
sessions_started_on_this_day,
shutdown_kill_sum,
socket_crash_count,
ssl_handshake_result_failure_sum,
ssl_handshake_result_success_sum,
startup_profile_selection_first_ping_only,
startup_profile_selection_reason_first,
subsession_hours_sum,
sync_configured,
sync_count_desktop_mean,
sync_count_desktop_sum,
sync_count_mobile_mean,
sync_count_mobile_sum,
telemetry_enabled,
text_recognition_api_performance_count_sum,
text_recognition_api_performance_sum,
text_recognition_interaction_timing_count_sum,
text_recognition_interaction_timing_sum,
text_recognition_text_length_count_sum,
text_recognition_text_length_sum,
timezone_offset,
total_uri_count,
total_uri_count_normal_mode,
total_uri_count_private_mode,
trackers_blocked_sum,
update_auto_download,
update_background,
update_channel,
update_enabled,
user_pref_app_shield_optoutstudies_enabled,
user_pref_browser_newtabpage_enabled,
user_pref_browser_search_region,
user_pref_browser_search_suggest_enabled,
user_pref_browser_urlbar_quicksuggest_data_collection_enabled,
user_pref_browser_urlbar_quicksuggest_onboarding_dialog_choice,
user_pref_browser_urlbar_show_search_suggestions_first,
user_pref_browser_urlbar_suggest_bestmatch,
user_pref_browser_urlbar_suggest_quicksuggest,
user_pref_browser_urlbar_suggest_quicksuggest_nonsponsored,
user_pref_browser_urlbar_suggest_quicksuggest_sponsored,
user_pref_browser_urlbar_suggest_searches,
user_pref_browser_widget_in_navbar,
utility_crash_count,
vendor,
vr_crash_count,
web_notification_shown_sum,
windows_build_number,
windows_ubr,
first_seen_date,
second_seen_date,
submission_date_s3,
submission_timestamp_min,

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

  dimension: all_tile_impressions_pos1_2 {
    group_label: "Metrics"
    label: "All Tiles Impressions Count (Position 1 and 2)"
    description: "Count of Impressions of All Tiles (sponsored and organic) in the first and second positions.
"
    type: number
    sql: ${TABLE}.all_tile_impressions_pos1_2 ;;
  }

  dimension: all_tile_impressions_pos3_more {
    group_label: "Metrics"
    label: "All Tiles Impressions Count (Position 3 or greater)"
    description: "Count of Impressions of All Tiles (sponsored and organic) in the third and greater positions.
"
    type: number
    sql: ${TABLE}.all_tile_impressions_pos3_more ;;
  }

  dimension: all_tile_clicks_pos1_2 {
    group_label: "Metrics"
    label: "All Tiles Clicks Count (Position 1 and 2)"
    description: "Count of Clicks of All Tiles (sponsored and organic) in the first and second positions.
"
    type: number
    sql: ${TABLE}.all_tile_clicks_pos1_2 ;;
  }

  dimension: all_tile_clicks_pos3_more {
    group_label: "Metrics"
    label: "All Tiles Clicks Count (Position 3 or greater)"
    description: "Count of Clicks of All Tiles (sponsored and organic) in the third and greater positions.
"
    type: number
    sql: ${TABLE}.all_tile_clicks_pos3_more ;;
  }

  dimension: sponsored_tile_impressions {
    group_label: "Metrics"
    label: "Sponsored Tile Impressions"
    description: "Count of impressions of Sponsored Tiles (aka Sponsored Topsites on New Tab) across all positions.
"
    type: number
    sql: ${TABLE}.sponsored_tile_impressions ;;
  }

  dimension: sponsored_tile_impressions_pos1_2 {
    group_label: "Metrics"
    label: "All Tiles Impressions Count (Position 1 and 2)"
    description: "Count of Impressions of All Tiles (sponsored and organic) in the first and second positions.
"
    type: number
    sql: ${TABLE}.sponsored_tile_impressions_pos1_2 ;;
  }

  dimension: sponsored_tile_impressions_pos3_more {
    group_label: "Metrics"
    label: "All Tiles Impressions Count (Position 3 or greater)"
    description: "Count of Impressions of All Tiles (sponsored and organic) in the third and greater positions.
"
    type: number
    sql: ${TABLE}.sponsored_tile_impressions_pos3_more ;;
  }

  dimension: sponsored_tile_clicks {
    group_label: "Metrics"
    label: "Sponsored Tile Clicks"
    description: "Count of clicks of Sponsored Tiles (aka Sponsored Topsites on New Tab) across all positions.
"
    type: number
    sql: ${TABLE}.sponsored_tile_clicks ;;
  }

  dimension: sponsored_tile_clicks_pos1_2 {
    group_label: "Metrics"
    label: "Sponsored Tiles Clicks Count (Position 1 and 2)"
    description: "Count of Clicks of Sponsored Tiles in the first and second positions.
"
    type: number
    sql: ${TABLE}.sponsored_tile_clicks_pos1_2 ;;
  }

  dimension: sponsored_tile_clicks_pos3_more {
    group_label: "Metrics"
    label: "Sponsored Tiles Clicks Count (Position 3 or greater)"
    description: "Count of Clicks of Sponsored Tiles in the third and greater positions.
"
    type: number
    sql: ${TABLE}.sponsored_tile_clicks_pos3_more ;;
  }

  dimension: newtab_newtab_enabled {
    group_label: "Metrics"
    label: "Newtab Newtab Enabled"
    description: "Whether or not new tabs are set to display the default New Tab page.
"
    type: number
    sql: ${TABLE}.newtab_newtab_enabled ;;
  }

  dimension: newtab_homepage_enabled {
    group_label: "Metrics"
    label: "Newtab Homepage Enabled"
    description: "Whether or not the homepage is set to display the default New Tab page.
"
    type: number
    sql: ${TABLE}.newtab_homepage_enabled ;;
  }

  dimension: newtab_search_enabled {
    group_label: "Metrics"
    label: "Newtab Search Enabled"
    description: "Whether or not the SAP (i.e., search handoff) is enabled on the New Tab.
"
    type: number
    sql: ${TABLE}.newtab_search_enabled ;;
  }

  dimension: newtab_tiles_enabled {
    group_label: "Metrics"
    label: "Newtab Tiles Enabled"
    description: "Whether or not tiles are enabled on the New Tab. Includes both sponsored and nonsponsored tiles.
"
    type: number
    sql: ${TABLE}.newtab_tiles_enabled ;;
  }

  dimension: newtab_pocket_enabled {
    group_label: "Metrics"
    label: "Newtab Pocket Enabled"
    description: "Whether or not Pocket is enabled on the New Tab.
"
    type: number
    sql: ${TABLE}.newtab_pocket_enabled ;;
  }

  dimension: newtab_sponsored_pocket_stories_enabled {
    group_label: "Metrics"
    label: "Newtab Sponsored Pocket Stories Enabled"
    description: "Whether or not Pocket Sponsored Stories is enabled on the New Tab.
"
    type: number
    sql: ${TABLE}.newtab_sponsored_pocket_stories_enabled ;;
  }

  dimension: newtab_organic_topsite_clicks {
    group_label: "Metrics"
    label: "Newtab Organic Tile Clicks"
    description: "Count of New Tab organic tile clicks across all positions.
"
    type: number
    sql: ${TABLE}.newtab_organic_topsite_clicks ;;
  }

  dimension: newtab_organic_topsite_impressions {
    group_label: "Metrics"
    label: "Newtab Organic Tile Impressions"
    description: "Count of New Tab organic tile impressions across all positions.
"
    type: number
    sql: ${TABLE}.newtab_organic_topsite_impressions ;;
  }

  dimension: sponsored_tiles_dismissals {
    group_label: "Metrics"
    label: "Sponsored Tiles Dismissals Count"
    description: "Count of sponsored tiles dismissals in all positions"
    type: number
    sql: ${TABLE}.sponsored_tiles_dismissals ;;
  }

  dimension: any_sponsored_tiles_dismissals {
    group_label: "Metrics"
    label: "Any Sponsored Tiles Dismissed"
    description: "Clients that dismissed any sponsored tiles"
    type: number
    sql: ${TABLE}.any_sponsored_tiles_dismissals ;;
  }

  dimension: sponsored_tiles_dismissals_pos1_2 {
    group_label: "Metrics"
    label: "Sponsored Tiles Dismissals Count (Positions 1 and 2)"
    description: "Count of sponsored tiles dismissals in the first two positions"
    type: number
    sql: ${TABLE}.sponsored_tiles_dismissals_pos1_2 ;;
  }

  dimension: sponsored_tiles_dismissals_pos3_more {
    group_label: "Metrics"
    label: "Sponsored Tiles Dismissals Count (Position 3 or greater)"
    description: "Count of sponsored tiles dismissals in the third and greater positions"
    type: number
    sql: ${TABLE}.sponsored_tiles_dismissals_pos3_more ;;
  }

  dimension: organic_tiles_dismissals {
    group_label: "Metrics"
    label: "Organic Tiles Dismissals Count"
    description: "Count of organic tiles dismissals in all positions"
    type: number
    sql: ${TABLE}.organic_tiles_dismissals ;;
  }

  dimension: any_organic_tiles_dismissals {
    group_label: "Metrics"
    label: "Any Organic Tiles Dismissed"
    description: "Clients that dismissed any organic tiles"
    type: number
    sql: ${TABLE}.any_organic_tiles_dismissals ;;
  }

  dimension: a11y_theme {
    sql: ${TABLE}.a11y_theme ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: aborts_content_sum {
    sql: ${TABLE}.aborts_content_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: aborts_gmplugin_sum {
    sql: ${TABLE}.aborts_gmplugin_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: aborts_plugin_sum {
    sql: ${TABLE}.aborts_plugin_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: active_addons {
    sql: ${TABLE}.active_addons ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: active_addons_count_mean {
    sql: ${TABLE}.active_addons_count_mean ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: active_hours_sum {
    sql: ${TABLE}.active_hours_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: ad_clicks {
    sql: ${TABLE}.ad_clicks ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: ad_clicks_count_all {
    sql: ${TABLE}.ad_clicks_count_all ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: addon_compatibility_check_enabled {
    sql: ${TABLE}.addon_compatibility_check_enabled ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: app_build_id {
    sql: ${TABLE}.app_build_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_display_version {
    sql: ${TABLE}.app_display_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_name {
    sql: ${TABLE}.app_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_version {
    sql: ${TABLE}.app_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: apple_model_id {
    sql: ${TABLE}.apple_model_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: attribution__campaign {
    sql: ${TABLE}.attribution.campaign ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Campaign"
  }

  dimension: attribution__content {
    sql: ${TABLE}.attribution.content ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Content"
  }

  dimension: attribution__dlsource {
    sql: ${TABLE}.attribution.dlsource ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Dlsource"
  }

  dimension: attribution__dltoken {
    sql: ${TABLE}.attribution.dltoken ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Dltoken"
  }

  dimension: attribution__experiment {
    sql: ${TABLE}.attribution.experiment ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Experiment"
  }

  dimension: attribution__medium {
    sql: ${TABLE}.attribution.medium ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Medium"
  }

  dimension: attribution__source {
    sql: ${TABLE}.attribution.source ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Source"
  }

  dimension: attribution__ua {
    sql: ${TABLE}.attribution.ua ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Ua"
  }

  dimension: attribution__variation {
    sql: ${TABLE}.attribution.variation ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Variation"
  }

  dimension: blocklist_enabled {
    sql: ${TABLE}.blocklist_enabled ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: bookmark_migrations_quantity_all {
    sql: ${TABLE}.bookmark_migrations_quantity_all ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: bookmark_migrations_quantity_chrome {
    sql: ${TABLE}.bookmark_migrations_quantity_chrome ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: bookmark_migrations_quantity_edge {
    sql: ${TABLE}.bookmark_migrations_quantity_edge ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: bookmark_migrations_quantity_safari {
    sql: ${TABLE}.bookmark_migrations_quantity_safari ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: browser_version_info__is_major_release {
    sql: ${TABLE}.browser_version_info.is_major_release ;;
    type: yesno
    group_label: "Base Fields"
    group_item_label: "Is Major Release"
  }

  dimension: browser_version_info__major_version {
    sql: ${TABLE}.browser_version_info.major_version ;;
    type: number
    group_label: "Base Fields"
    group_item_label: "Major Version"
  }

  dimension: browser_version_info__minor_version {
    sql: ${TABLE}.browser_version_info.minor_version ;;
    type: number
    group_label: "Base Fields"
    group_item_label: "Minor Version"
  }

  dimension: browser_version_info__patch_revision {
    sql: ${TABLE}.browser_version_info.patch_revision ;;
    type: number
    group_label: "Base Fields"
    group_item_label: "Patch Revision"
  }

  dimension: browser_version_info__version {
    sql: ${TABLE}.browser_version_info.version ;;
    type: string
    group_label: "Base Fields"
    group_item_label: "Version"
  }

  dimension: channel {
    sql: ${TABLE}.channel ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: city {
    sql: ${TABLE}.city ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: client_clock_skew_mean {
    sql: ${TABLE}.client_clock_skew_mean ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: client_submission_latency_mean {
    sql: ${TABLE}.client_submission_latency_mean ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: content_crash_count {
    sql: ${TABLE}.content_crash_count ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_block_dynamic_wikipedia_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_block_dynamic_wikipedia_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_block_nonsponsored_bestmatch_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_block_nonsponsored_bestmatch_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_block_nonsponsored_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_block_nonsponsored_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_block_sponsored_bestmatch_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_block_sponsored_bestmatch_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_block_sponsored_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_block_sponsored_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_block_weather_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_block_weather_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_click_dynamic_wikipedia_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_click_dynamic_wikipedia_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_click_nonsponsored_bestmatch_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_click_nonsponsored_bestmatch_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_click_nonsponsored_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_click_nonsponsored_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_click_sponsored_bestmatch_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_click_sponsored_bestmatch_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_click_sponsored_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_click_sponsored_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_click_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_click_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_click_weather_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_click_weather_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_help_dynamic_wikipedia_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_help_dynamic_wikipedia_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_help_nonsponsored_bestmatch_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_help_nonsponsored_bestmatch_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_help_nonsponsored_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_help_nonsponsored_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_help_sponsored_bestmatch_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_help_sponsored_bestmatch_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_help_sponsored_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_help_sponsored_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_help_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_help_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_help_weather_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_help_weather_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_impression_dynamic_wikipedia_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_impression_dynamic_wikipedia_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_impression_nonsponsored_bestmatch_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_impression_nonsponsored_bestmatch_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_impression_nonsponsored_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_impression_nonsponsored_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_impression_sponsored_bestmatch_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_impression_sponsored_bestmatch_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_impression_sponsored_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_impression_sponsored_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_impression_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_impression_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: contextual_services_quicksuggest_impression_weather_sum {
    sql: ${TABLE}.contextual_services_quicksuggest_impression_weather_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_topsites_click_sum {
    sql: ${TABLE}.contextual_services_topsites_click_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: contextual_services_topsites_impression_sum {
    sql: ${TABLE}.contextual_services_topsites_impression_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: country {
    sql: ${TABLE}.country ;;
    type: string
    map_layer_name: countries
    group_label: "Base Fields"
  }

  dimension: cpu_cores {
    sql: ${TABLE}.cpu_cores ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: cpu_count {
    sql: ${TABLE}.cpu_count ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: cpu_family {
    sql: ${TABLE}.cpu_family ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: cpu_l2_cache_kb {
    sql: ${TABLE}.cpu_l2_cache_kb ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: cpu_l3_cache_kb {
    sql: ${TABLE}.cpu_l3_cache_kb ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: cpu_model {
    sql: ${TABLE}.cpu_model ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: cpu_speed_mhz {
    sql: ${TABLE}.cpu_speed_mhz ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: cpu_stepping {
    sql: ${TABLE}.cpu_stepping ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: cpu_vendor {
    sql: ${TABLE}.cpu_vendor ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: crash_submit_attempt_content_sum {
    sql: ${TABLE}.crash_submit_attempt_content_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: crash_submit_attempt_main_sum {
    sql: ${TABLE}.crash_submit_attempt_main_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: crash_submit_attempt_plugin_sum {
    sql: ${TABLE}.crash_submit_attempt_plugin_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: crash_submit_success_content_sum {
    sql: ${TABLE}.crash_submit_success_content_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: crash_submit_success_main_sum {
    sql: ${TABLE}.crash_submit_success_main_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: crash_submit_success_plugin_sum {
    sql: ${TABLE}.crash_submit_success_plugin_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: crashes_detected_content_sum {
    sql: ${TABLE}.crashes_detected_content_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: crashes_detected_gmplugin_sum {
    sql: ${TABLE}.crashes_detected_gmplugin_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: crashes_detected_plugin_sum {
    sql: ${TABLE}.crashes_detected_plugin_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: default_private_search_engine {
    sql: ${TABLE}.default_private_search_engine ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: default_private_search_engine_data_load_path {
    sql: ${TABLE}.default_private_search_engine_data_load_path ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: default_private_search_engine_data_name {
    sql: ${TABLE}.default_private_search_engine_data_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: default_private_search_engine_data_origin {
    sql: ${TABLE}.default_private_search_engine_data_origin ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: default_private_search_engine_data_submission_url {
    sql: ${TABLE}.default_private_search_engine_data_submission_url ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: default_search_engine {
    sql: ${TABLE}.default_search_engine ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: default_search_engine_data_load_path {
    sql: ${TABLE}.default_search_engine_data_load_path ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: default_search_engine_data_name {
    sql: ${TABLE}.default_search_engine_data_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: default_search_engine_data_origin {
    sql: ${TABLE}.default_search_engine_data_origin ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: default_search_engine_data_submission_url {
    sql: ${TABLE}.default_search_engine_data_submission_url ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: devtools_toolbox_opened_count_sum {
    sql: ${TABLE}.devtools_toolbox_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: distribution_id {
    sql: ${TABLE}.distribution_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: distribution_version {
    sql: ${TABLE}.distribution_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: distributor {
    sql: ${TABLE}.distributor ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: distributor_channel {
    sql: ${TABLE}.distributor_channel ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: dom_parentprocess_private_window_used {
    sql: ${TABLE}.dom_parentprocess_private_window_used ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: e10s_enabled {
    sql: ${TABLE}.e10s_enabled ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: env_build_arch {
    sql: ${TABLE}.env_build_arch ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: env_build_id {
    sql: ${TABLE}.env_build_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: env_build_platform_version {
    sql: ${TABLE}.env_build_platform_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: env_build_version {
    sql: ${TABLE}.env_build_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: env_build_xpcom_abi {
    sql: ${TABLE}.env_build_xpcom_abi ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: environment_settings_intl_accept_languages {
    sql: ${TABLE}.environment_settings_intl_accept_languages ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: environment_settings_intl_app_locales {
    sql: ${TABLE}.environment_settings_intl_app_locales ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: environment_settings_intl_available_locales {
    sql: ${TABLE}.environment_settings_intl_available_locales ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: environment_settings_intl_regional_prefs_locales {
    sql: ${TABLE}.environment_settings_intl_regional_prefs_locales ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: environment_settings_intl_requested_locales {
    sql: ${TABLE}.environment_settings_intl_requested_locales ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: environment_settings_intl_system_locales {
    sql: ${TABLE}.environment_settings_intl_system_locales ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: experiments {
    sql: ${TABLE}.experiments ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: first_document_id {
    sql: ${TABLE}.first_document_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: first_paint_mean {
    sql: ${TABLE}.first_paint_mean ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: flash_version {
    sql: ${TABLE}.flash_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: fxa_configured {
    sql: ${TABLE}.fxa_configured ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: geo_db_version {
    sql: ${TABLE}.geo_db_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: geo_subdivision1 {
    sql: ${TABLE}.geo_subdivision1 ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: geo_subdivision2 {
    sql: ${TABLE}.geo_subdivision2 ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: gfx_features_advanced_layers_status {
    sql: ${TABLE}.gfx_features_advanced_layers_status ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: gfx_features_d2d_status {
    sql: ${TABLE}.gfx_features_d2d_status ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: gfx_features_d3d11_status {
    sql: ${TABLE}.gfx_features_d3d11_status ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: gfx_features_gpu_process_status {
    sql: ${TABLE}.gfx_features_gpu_process_status ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: gpu_crash_count {
    sql: ${TABLE}.gpu_crash_count ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: has_adblocker_enabled {
    sql: ${TABLE}.has_adblocker_enabled ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_aboutdebugging_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_aboutdebugging_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_animationinspector_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_animationinspector_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_browserconsole_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_browserconsole_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_canvasdebugger_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_canvasdebugger_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_computedview_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_computedview_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_custom_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_custom_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_dom_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_dom_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_eyedropper_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_eyedropper_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_fontinspector_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_fontinspector_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_inspector_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_inspector_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_jsbrowserdebugger_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_jsbrowserdebugger_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_jsdebugger_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_jsdebugger_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_jsprofiler_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_jsprofiler_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_layoutview_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_layoutview_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_memory_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_memory_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_menu_eyedropper_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_menu_eyedropper_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_netmonitor_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_netmonitor_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_options_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_options_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_paintflashing_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_paintflashing_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_picker_eyedropper_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_picker_eyedropper_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_responsive_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_responsive_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_ruleview_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_ruleview_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_scratchpad_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_scratchpad_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_scratchpad_window_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_scratchpad_window_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_shadereditor_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_shadereditor_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_storage_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_storage_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_styleeditor_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_styleeditor_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_webaudioeditor_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_webaudioeditor_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_webconsole_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_webconsole_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: histogram_parent_devtools_webide_opened_count_sum {
    sql: ${TABLE}.histogram_parent_devtools_webide_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: history_migrations_quantity_all {
    sql: ${TABLE}.history_migrations_quantity_all ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: history_migrations_quantity_chrome {
    sql: ${TABLE}.history_migrations_quantity_chrome ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: history_migrations_quantity_edge {
    sql: ${TABLE}.history_migrations_quantity_edge ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: history_migrations_quantity_safari {
    sql: ${TABLE}.history_migrations_quantity_safari ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: install_year {
    sql: ${TABLE}.install_year ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: is_default_browser {
    sql: ${TABLE}.is_default_browser ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: is_wow64 {
    sql: ${TABLE}.is_wow64 ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: isp_name {
    sql: ${TABLE}.isp_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: isp_organization {
    sql: ${TABLE}.isp_organization ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: locale {
    sql: ${TABLE}.locale ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: logins_migrations_quantity_all {
    sql: ${TABLE}.logins_migrations_quantity_all ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: logins_migrations_quantity_chrome {
    sql: ${TABLE}.logins_migrations_quantity_chrome ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: logins_migrations_quantity_edge {
    sql: ${TABLE}.logins_migrations_quantity_edge ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: logins_migrations_quantity_safari {
    sql: ${TABLE}.logins_migrations_quantity_safari ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: main_crash_count {
    sql: ${TABLE}.main_crash_count ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: max_subsession_counter {
    sql: ${TABLE}.max_subsession_counter ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: media_play_time_ms_audio_sum {
    sql: ${TABLE}.media_play_time_ms_audio_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: media_play_time_ms_video_sum {
    sql: ${TABLE}.media_play_time_ms_video_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: memory_mb {
    sql: ${TABLE}.memory_mb ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: min_subsession_counter {
    sql: ${TABLE}.min_subsession_counter ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: n_created_pictureinpicture {
    sql: ${TABLE}.n_created_pictureinpicture ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: n_logged_event {
    sql: ${TABLE}.n_logged_event ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: n_viewed_protection_report {
    sql: ${TABLE}.n_viewed_protection_report ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: normalized_channel {
    sql: ${TABLE}.normalized_channel ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: normalized_os_version {
    sql: ${TABLE}.normalized_os_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: os {
    sql: ${TABLE}.os ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: os_environment_is_taskbar_pinned_any {
    sql: ${TABLE}.os_environment_is_taskbar_pinned_any ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: os_environment_is_taskbar_pinned_private {
    sql: ${TABLE}.os_environment_is_taskbar_pinned_private ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: os_environment_is_taskbar_pinned_private_any {
    sql: ${TABLE}.os_environment_is_taskbar_pinned_private_any ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: os_service_pack_major {
    sql: ${TABLE}.os_service_pack_major ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: os_service_pack_minor {
    sql: ${TABLE}.os_service_pack_minor ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: os_version {
    sql: ${TABLE}.os_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: partner_id {
    sql: ${TABLE}.partner_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: pings_aggregated_by_this_row {
    sql: ${TABLE}.pings_aggregated_by_this_row ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: places_bookmarks_count_mean {
    sql: ${TABLE}.places_bookmarks_count_mean ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: places_bookmarks_searchbar_cumulative_searches_sum {
    sql: ${TABLE}.places_bookmarks_searchbar_cumulative_searches_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: places_library_cumulative_bookmark_searches_sum {
    sql: ${TABLE}.places_library_cumulative_bookmark_searches_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: places_library_cumulative_history_searches_sum {
    sql: ${TABLE}.places_library_cumulative_history_searches_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: places_pages_count_mean {
    sql: ${TABLE}.places_pages_count_mean ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: places_previousday_visits_mean {
    sql: ${TABLE}.places_previousday_visits_mean ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: places_searchbar_cumulative_filter_count_sum {
    sql: ${TABLE}.places_searchbar_cumulative_filter_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: places_searchbar_cumulative_searches_sum {
    sql: ${TABLE}.places_searchbar_cumulative_searches_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: plugin_hangs_sum {
    sql: ${TABLE}.plugin_hangs_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: plugins_infobar_allow_sum {
    sql: ${TABLE}.plugins_infobar_allow_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: plugins_infobar_block_sum {
    sql: ${TABLE}.plugins_infobar_block_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: plugins_infobar_shown_sum {
    sql: ${TABLE}.plugins_infobar_shown_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: plugins_notification_shown_sum {
    sql: ${TABLE}.plugins_notification_shown_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: previous_build_id {
    sql: ${TABLE}.previous_build_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: profile_age_in_days {
    sql: ${TABLE}.profile_age_in_days ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: profile_creation_date {
    sql: ${TABLE}.profile_creation_date ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: push_api_notify_sum {
    sql: ${TABLE}.push_api_notify_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: rdd_crash_count {
    sql: ${TABLE}.rdd_crash_count ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: sample_id {
    sql: ${TABLE}.sample_id ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: sandbox_effective_content_process_level {
    sql: ${TABLE}.sandbox_effective_content_process_level ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_a11y_hcm_background {
    sql: ${TABLE}.scalar_a11y_hcm_background ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_a11y_hcm_foreground {
    sql: ${TABLE}.scalar_a11y_hcm_foreground ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_combined_webrtc_nicer_stun_retransmits_sum {
    sql: ${TABLE}.scalar_combined_webrtc_nicer_stun_retransmits_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_combined_webrtc_nicer_turn_401s_sum {
    sql: ${TABLE}.scalar_combined_webrtc_nicer_turn_401s_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_combined_webrtc_nicer_turn_403s_sum {
    sql: ${TABLE}.scalar_combined_webrtc_nicer_turn_403s_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_combined_webrtc_nicer_turn_438s_sum {
    sql: ${TABLE}.scalar_combined_webrtc_nicer_turn_438s_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_content_navigator_storage_estimate_count_sum {
    sql: ${TABLE}.scalar_content_navigator_storage_estimate_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_content_navigator_storage_persist_count_sum {
    sql: ${TABLE}.scalar_content_navigator_storage_persist_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_content_telemetry_event_counts_sum {
    sql: ${TABLE}.scalar_content_telemetry_event_counts_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_aushelper_websense_reg_version {
    sql: ${TABLE}.scalar_parent_aushelper_websense_reg_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_engagement_max_concurrent_tab_count_max {
    sql: ${TABLE}.scalar_parent_browser_engagement_max_concurrent_tab_count_max ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_engagement_max_concurrent_window_count_max {
    sql: ${TABLE}.scalar_parent_browser_engagement_max_concurrent_window_count_max ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_engagement_tab_open_event_count_sum {
    sql: ${TABLE}.scalar_parent_browser_engagement_tab_open_event_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_engagement_total_uri_count_normal_and_private_mode_sum {
    sql: ${TABLE}.scalar_parent_browser_engagement_total_uri_count_normal_and_private_mode_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_engagement_total_uri_count_sum {
    sql: ${TABLE}.scalar_parent_browser_engagement_total_uri_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_engagement_unfiltered_uri_count_sum {
    sql: ${TABLE}.scalar_parent_browser_engagement_unfiltered_uri_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_engagement_unique_domains_count_max {
    sql: ${TABLE}.scalar_parent_browser_engagement_unique_domains_count_max ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_engagement_unique_domains_count_mean {
    sql: ${TABLE}.scalar_parent_browser_engagement_unique_domains_count_mean ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_engagement_window_open_event_count_sum {
    sql: ${TABLE}.scalar_parent_browser_engagement_window_open_event_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_ui_interaction_content_context_sum {
    sql: ${TABLE}.scalar_parent_browser_ui_interaction_content_context_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_ui_interaction_preferences_pane_home_sum {
    sql: ${TABLE}.scalar_parent_browser_ui_interaction_preferences_pane_home_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_browser_ui_interaction_textrecognition_error_sum {
    sql: ${TABLE}.scalar_parent_browser_ui_interaction_textrecognition_error_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_devtools_accessibility_node_inspected_count_sum {
    sql: ${TABLE}.scalar_parent_devtools_accessibility_node_inspected_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_devtools_accessibility_opened_count_sum {
    sql: ${TABLE}.scalar_parent_devtools_accessibility_opened_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_devtools_accessibility_picker_used_count_sum {
    sql: ${TABLE}.scalar_parent_devtools_accessibility_picker_used_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_devtools_accessibility_select_accessible_for_node_sum {
    sql: ${TABLE}.scalar_parent_devtools_accessibility_select_accessible_for_node_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_devtools_accessibility_service_enabled_count_sum {
    sql: ${TABLE}.scalar_parent_devtools_accessibility_service_enabled_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_devtools_copy_full_css_selector_opened_sum {
    sql: ${TABLE}.scalar_parent_devtools_copy_full_css_selector_opened_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_devtools_copy_unique_css_selector_opened_sum {
    sql: ${TABLE}.scalar_parent_devtools_copy_unique_css_selector_opened_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_devtools_toolbar_eyedropper_opened_sum {
    sql: ${TABLE}.scalar_parent_devtools_toolbar_eyedropper_opened_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_library_link_sum {
    sql: ${TABLE}.scalar_parent_library_link_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_library_opened_sum {
    sql: ${TABLE}.scalar_parent_library_opened_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_library_search_sum {
    sql: ${TABLE}.scalar_parent_library_search_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_navigator_storage_estimate_count_sum {
    sql: ${TABLE}.scalar_parent_navigator_storage_estimate_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_navigator_storage_persist_count_sum {
    sql: ${TABLE}.scalar_parent_navigator_storage_persist_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_os_environment_is_taskbar_pinned {
    sql: ${TABLE}.scalar_parent_os_environment_is_taskbar_pinned ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: scalar_parent_os_environment_launched_via_desktop {
    sql: ${TABLE}.scalar_parent_os_environment_launched_via_desktop ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: scalar_parent_os_environment_launched_via_other {
    sql: ${TABLE}.scalar_parent_os_environment_launched_via_other ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: scalar_parent_os_environment_launched_via_other_shortcut {
    sql: ${TABLE}.scalar_parent_os_environment_launched_via_other_shortcut ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: scalar_parent_os_environment_launched_via_start_menu {
    sql: ${TABLE}.scalar_parent_os_environment_launched_via_start_menu ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: scalar_parent_os_environment_launched_via_taskbar {
    sql: ${TABLE}.scalar_parent_os_environment_launched_via_taskbar ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: scalar_parent_os_environment_launched_via_taskbar_private {
    sql: ${TABLE}.scalar_parent_os_environment_launched_via_taskbar_private ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: scalar_parent_sidebar_link_sum {
    sql: ${TABLE}.scalar_parent_sidebar_link_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_sidebar_opened_sum {
    sql: ${TABLE}.scalar_parent_sidebar_opened_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_sidebar_search_sum {
    sql: ${TABLE}.scalar_parent_sidebar_search_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_storage_sync_api_usage_extensions_using_sum {
    sql: ${TABLE}.scalar_parent_storage_sync_api_usage_extensions_using_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_telemetry_event_counts_sum {
    sql: ${TABLE}.scalar_parent_telemetry_event_counts_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_impression_autofill_about_sum {
    sql: ${TABLE}.scalar_parent_urlbar_impression_autofill_about_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_impression_autofill_adaptive_sum {
    sql: ${TABLE}.scalar_parent_urlbar_impression_autofill_adaptive_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_impression_autofill_origin_sum {
    sql: ${TABLE}.scalar_parent_urlbar_impression_autofill_origin_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_impression_autofill_other_sum {
    sql: ${TABLE}.scalar_parent_urlbar_impression_autofill_other_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_impression_autofill_preloaded_sum {
    sql: ${TABLE}.scalar_parent_urlbar_impression_autofill_preloaded_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_impression_autofill_url_sum {
    sql: ${TABLE}.scalar_parent_urlbar_impression_autofill_url_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_autofill_about_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_autofill_about_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_autofill_adaptive_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_autofill_adaptive_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_autofill_origin_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_autofill_origin_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_autofill_other_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_autofill_other_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_autofill_preloaded_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_autofill_preloaded_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_autofill_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_autofill_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_autofill_url_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_autofill_url_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_bookmark_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_bookmark_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_dynamic_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_dynamic_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_extension_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_extension_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_formhistory_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_formhistory_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_history_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_history_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_keyword_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_keyword_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_remotetab_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_remotetab_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_searchengine_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_searchengine_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_searchsuggestion_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_searchsuggestion_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_switchtab_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_switchtab_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_tabtosearch_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_tabtosearch_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_tip_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_tip_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_topsite_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_topsite_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_unknown_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_unknown_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_picked_visiturl_sum {
    sql: ${TABLE}.scalar_parent_urlbar_picked_visiturl_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_bookmarkmenu_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_bookmarkmenu_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_handoff_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_handoff_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_keywordoffer_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_keywordoffer_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_oneoff_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_oneoff_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_other_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_other_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_shortcut_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_shortcut_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_tabmenu_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_tabmenu_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_tabtosearch_onboard_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_tabtosearch_onboard_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_tabtosearch_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_tabtosearch_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_topsites_newtab_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_topsites_newtab_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_topsites_urlbar_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_topsites_urlbar_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_touchbar_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_touchbar_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: scalar_parent_urlbar_searchmode_typed_sum {
    sql: ${TABLE}.scalar_parent_urlbar_searchmode_typed_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_about_home_sum {
    sql: ${TABLE}.search_adclicks_about_home_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_about_newtab_sum {
    sql: ${TABLE}.search_adclicks_about_newtab_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_contextmenu_sum {
    sql: ${TABLE}.search_adclicks_contextmenu_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_reload_sum {
    sql: ${TABLE}.search_adclicks_reload_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_searchbar_sum {
    sql: ${TABLE}.search_adclicks_searchbar_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_system_sum {
    sql: ${TABLE}.search_adclicks_system_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_tabhistory_sum {
    sql: ${TABLE}.search_adclicks_tabhistory_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_unknown_sum {
    sql: ${TABLE}.search_adclicks_unknown_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_urlbar_handoff_sum {
    sql: ${TABLE}.search_adclicks_urlbar_handoff_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_urlbar_persisted_sum {
    sql: ${TABLE}.search_adclicks_urlbar_persisted_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_urlbar_searchmode_sum {
    sql: ${TABLE}.search_adclicks_urlbar_searchmode_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_urlbar_sum {
    sql: ${TABLE}.search_adclicks_urlbar_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_adclicks_webextension_sum {
    sql: ${TABLE}.search_adclicks_webextension_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_cohort {
    sql: ${TABLE}.search_cohort ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: search_content_about_home_sum {
    sql: ${TABLE}.search_content_about_home_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_about_newtab_sum {
    sql: ${TABLE}.search_content_about_newtab_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_contextmenu_sum {
    sql: ${TABLE}.search_content_contextmenu_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_reload_sum {
    sql: ${TABLE}.search_content_reload_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_searchbar_sum {
    sql: ${TABLE}.search_content_searchbar_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_system_sum {
    sql: ${TABLE}.search_content_system_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_tabhistory_sum {
    sql: ${TABLE}.search_content_tabhistory_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_unknown_sum {
    sql: ${TABLE}.search_content_unknown_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_urlbar_handoff_sum {
    sql: ${TABLE}.search_content_urlbar_handoff_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_urlbar_persisted_sum {
    sql: ${TABLE}.search_content_urlbar_persisted_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_urlbar_searchmode_sum {
    sql: ${TABLE}.search_content_urlbar_searchmode_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_urlbar_sum {
    sql: ${TABLE}.search_content_urlbar_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_content_webextension_sum {
    sql: ${TABLE}.search_content_webextension_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_count_abouthome {
    sql: ${TABLE}.search_count_abouthome ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_alias {
    sql: ${TABLE}.search_count_alias ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_all {
    sql: ${TABLE}.search_count_all ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_contextmenu {
    sql: ${TABLE}.search_count_contextmenu ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_newtab {
    sql: ${TABLE}.search_count_newtab ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_organic {
    sql: ${TABLE}.search_count_organic ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_searchbar {
    sql: ${TABLE}.search_count_searchbar ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_system {
    sql: ${TABLE}.search_count_system ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_tagged_follow_on {
    sql: ${TABLE}.search_count_tagged_follow_on ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_tagged_sap {
    sql: ${TABLE}.search_count_tagged_sap ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_urlbar {
    sql: ${TABLE}.search_count_urlbar ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_urlbar_handoff {
    sql: ${TABLE}.search_count_urlbar_handoff ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_urlbar_persisted {
    sql: ${TABLE}.search_count_urlbar_persisted ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_urlbar_searchmode {
    sql: ${TABLE}.search_count_urlbar_searchmode ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_count_webextension {
    sql: ${TABLE}.search_count_webextension ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_counts {
    sql: ${TABLE}.search_counts ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_with_ads {
    sql: ${TABLE}.search_with_ads ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_with_ads_count_all {
    sql: ${TABLE}.search_with_ads_count_all ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: search_withads_about_home_sum {
    sql: ${TABLE}.search_withads_about_home_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_about_newtab_sum {
    sql: ${TABLE}.search_withads_about_newtab_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_contextmenu_sum {
    sql: ${TABLE}.search_withads_contextmenu_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_reload_sum {
    sql: ${TABLE}.search_withads_reload_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_searchbar_sum {
    sql: ${TABLE}.search_withads_searchbar_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_system_sum {
    sql: ${TABLE}.search_withads_system_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_tabhistory_sum {
    sql: ${TABLE}.search_withads_tabhistory_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_unknown_sum {
    sql: ${TABLE}.search_withads_unknown_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_urlbar_handoff_sum {
    sql: ${TABLE}.search_withads_urlbar_handoff_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_urlbar_persisted_sum {
    sql: ${TABLE}.search_withads_urlbar_persisted_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_urlbar_searchmode_sum {
    sql: ${TABLE}.search_withads_urlbar_searchmode_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_urlbar_sum {
    sql: ${TABLE}.search_withads_urlbar_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: search_withads_webextension_sum {
    sql: ${TABLE}.search_withads_webextension_sum ;;
    hidden: yes
    group_label: "Base Fields"
  }

  dimension: session_restored_mean {
    sql: ${TABLE}.session_restored_mean ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: sessions_started_on_this_day {
    sql: ${TABLE}.sessions_started_on_this_day ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: shutdown_kill_sum {
    sql: ${TABLE}.shutdown_kill_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: socket_crash_count {
    sql: ${TABLE}.socket_crash_count ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: ssl_handshake_result_failure_sum {
    sql: ${TABLE}.ssl_handshake_result_failure_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: ssl_handshake_result_success_sum {
    sql: ${TABLE}.ssl_handshake_result_success_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: startup_profile_selection_first_ping_only {
    sql: ${TABLE}.startup_profile_selection_first_ping_only ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: startup_profile_selection_reason_first {
    sql: ${TABLE}.startup_profile_selection_reason_first ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: subsession_hours_sum {
    sql: ${TABLE}.subsession_hours_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: sync_configured {
    sql: ${TABLE}.sync_configured ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: sync_count_desktop_mean {
    sql: ${TABLE}.sync_count_desktop_mean ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: sync_count_desktop_sum {
    sql: ${TABLE}.sync_count_desktop_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: sync_count_mobile_mean {
    sql: ${TABLE}.sync_count_mobile_mean ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: sync_count_mobile_sum {
    sql: ${TABLE}.sync_count_mobile_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: telemetry_enabled {
    sql: ${TABLE}.telemetry_enabled ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: text_recognition_api_performance_count_sum {
    sql: ${TABLE}.text_recognition_api_performance_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: text_recognition_api_performance_sum {
    sql: ${TABLE}.text_recognition_api_performance_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: text_recognition_interaction_timing_count_sum {
    sql: ${TABLE}.text_recognition_interaction_timing_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: text_recognition_interaction_timing_sum {
    sql: ${TABLE}.text_recognition_interaction_timing_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: text_recognition_text_length_count_sum {
    sql: ${TABLE}.text_recognition_text_length_count_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: text_recognition_text_length_sum {
    sql: ${TABLE}.text_recognition_text_length_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: timezone_offset {
    sql: ${TABLE}.timezone_offset ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: total_uri_count {
    sql: ${TABLE}.total_uri_count ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: total_uri_count_normal_mode {
    sql: ${TABLE}.total_uri_count_normal_mode ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: total_uri_count_private_mode {
    sql: ${TABLE}.total_uri_count_private_mode ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: trackers_blocked_sum {
    sql: ${TABLE}.trackers_blocked_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: update_auto_download {
    sql: ${TABLE}.update_auto_download ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: update_background {
    sql: ${TABLE}.update_background ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: update_channel {
    sql: ${TABLE}.update_channel ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: update_enabled {
    sql: ${TABLE}.update_enabled ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: user_pref_app_shield_optoutstudies_enabled {
    sql: ${TABLE}.user_pref_app_shield_optoutstudies_enabled ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_newtabpage_enabled {
    sql: ${TABLE}.user_pref_browser_newtabpage_enabled ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_search_region {
    sql: ${TABLE}.user_pref_browser_search_region ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_search_suggest_enabled {
    sql: ${TABLE}.user_pref_browser_search_suggest_enabled ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_urlbar_quicksuggest_data_collection_enabled {
    sql: ${TABLE}.user_pref_browser_urlbar_quicksuggest_data_collection_enabled ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_urlbar_quicksuggest_onboarding_dialog_choice {
    sql: ${TABLE}.user_pref_browser_urlbar_quicksuggest_onboarding_dialog_choice ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_urlbar_show_search_suggestions_first {
    sql: ${TABLE}.user_pref_browser_urlbar_show_search_suggestions_first ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_urlbar_suggest_bestmatch {
    sql: ${TABLE}.user_pref_browser_urlbar_suggest_bestmatch ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_urlbar_suggest_quicksuggest {
    sql: ${TABLE}.user_pref_browser_urlbar_suggest_quicksuggest ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_urlbar_suggest_quicksuggest_nonsponsored {
    sql: ${TABLE}.user_pref_browser_urlbar_suggest_quicksuggest_nonsponsored ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_urlbar_suggest_quicksuggest_sponsored {
    sql: ${TABLE}.user_pref_browser_urlbar_suggest_quicksuggest_sponsored ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_urlbar_suggest_searches {
    sql: ${TABLE}.user_pref_browser_urlbar_suggest_searches ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: user_pref_browser_widget_in_navbar {
    sql: ${TABLE}.user_pref_browser_widget_in_navbar ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: utility_crash_count {
    sql: ${TABLE}.utility_crash_count ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: vendor {
    sql: ${TABLE}.vendor ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: vr_crash_count {
    sql: ${TABLE}.vr_crash_count ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: web_notification_shown_sum {
    sql: ${TABLE}.web_notification_shown_sum ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: windows_build_number {
    sql: ${TABLE}.windows_build_number ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: windows_ubr {
    sql: ${TABLE}.windows_ubr ;;
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

  dimension_group: first_seen {
    sql: ${TABLE}.first_seen_date ;;
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
    convert_tz: no
    datatype: date
    group_label: "Base Fields"
  }

  dimension_group: second_seen {
    sql: ${TABLE}.second_seen_date ;;
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
    convert_tz: no
    datatype: date
    group_label: "Base Fields"
  }

  dimension_group: submission_date_s3 {
    sql: ${TABLE}.submission_date_s3 ;;
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
    convert_tz: no
    datatype: date
    group_label: "Base Fields"
  }

  dimension_group: submission_timestamp_min {
    sql: ${TABLE}.submission_timestamp_min ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    group_label: "Base Fields"
  }

  set: metrics {
    fields: [
      all_tile_impressions_pos1_2,
      all_tile_impressions_pos3_more,
      all_tile_clicks_pos1_2,
      all_tile_clicks_pos3_more,
      sponsored_tile_impressions,
      sponsored_tile_impressions_pos1_2,
      sponsored_tile_impressions_pos3_more,
      sponsored_tile_clicks,
      sponsored_tile_clicks_pos1_2,
      sponsored_tile_clicks_pos3_more,
      newtab_newtab_enabled,
      newtab_homepage_enabled,
      newtab_search_enabled,
      newtab_tiles_enabled,
      newtab_pocket_enabled,
      newtab_sponsored_pocket_stories_enabled,
      newtab_organic_topsite_clicks,
      newtab_organic_topsite_impressions,
      sponsored_tiles_dismissals,
      any_sponsored_tiles_dismissals,
      sponsored_tiles_dismissals_pos1_2,
      sponsored_tiles_dismissals_pos3_more,
      organic_tiles_dismissals,
      any_organic_tiles_dismissals,
    ]
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