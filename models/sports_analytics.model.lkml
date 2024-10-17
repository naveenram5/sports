connection: "sports_analytics"

# include all the views
include: "/views/**/*.view.lkml"
include: "/views/derived_tables/sdt_single_column_box_score.view.lkml"
include: "/views/derived_tables/consolidated_player_stats.view.lkml"

datagroup: sports_analytics_default_datagroup {
  sql_trigger: SELECT MAX(week) FROM weekly_box_scores;;
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

explore: sdt_single_column_box_score {}

explore: consolidated_player_stats {
  join: weekly_projections {
    type: left_outer
    relationship: one_to_one
    sql_on: ${consolidated_player_stats.player_name} = ${weekly_projections.name}
            AND CAST(${consolidated_player_stats.week} AS INT64) = CAST(${weekly_projections.week} AS INT64) ;;
  }
}
