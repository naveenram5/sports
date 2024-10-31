connection: "sports_analytics"

# include all the views
include: "/views/**/*.view.lkml"
include: "/views/derived_tables/sdt_single_column_box_score.view.lkml"
include: "/views/derived_tables/sdt_consolidated_player_stats.view.lkml"
include: "/explores/**.explore.lkml"

datagroup: sports_analytics_default_datagroup {
  sql_trigger: SELECT MAX(week) FROM weekly_box_scores;;
  max_cache_age: "1 hour"
}

persist_with: sports_analytics_default_datagroup
