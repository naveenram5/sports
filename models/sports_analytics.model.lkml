connection: "sports_analytics"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: sports_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sports_analytics_default_datagroup

explore: fantasy_stats_k {}

# explore: fantasy_stats_dl {}

explore: fantasy_stats_rb {}

explore: fantasy_stats_dst {}

explore: fantasy_stats {
  label: "fantasy_stats_qb"
}

# explore: fantasy_stats_db {}

# explore: fantasy_stats_lb {}

explore: fantasy_stats_te {}

explore: fantasy_stats_wr {}

explore: fantasy_roster_stats {}

explore: weekly_box_scores {}

explore: weekly_projections {}
