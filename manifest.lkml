project_name: "sports_analytics"

application: tabbed_dashboards_with_filters_sports {
  label: "Tabbed Dashboards with Filters Sports"
  file: "sportsbundle.js"
  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    use_embeds: yes
    use_form_submit: yes
    core_api_methods: ["dashboard", "dashboard_dashboard_filters", "all_connections","search_folders", "run_inline_query", "me", "all_roles"]
  }
}
