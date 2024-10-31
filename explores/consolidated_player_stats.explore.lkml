include: "/views/derived_tables/sdt_consolidated_player_stats.view.lkml"
include: "/views/player_projections/weekly_projections.view.lkml"

explore: consolidated_player_stats {
  label: "Player Stats & Projections"
  description: "Explore weekly individual player stats and projections"
  persist_with: sports_analytics_default_datagroup

  join: weekly_projections {
    view_label: "Weekly Player Projections"
    type: left_outer
    relationship: one_to_one
    sql_on: ${consolidated_player_stats.player_name} = ${weekly_projections.name}
      AND CAST(${consolidated_player_stats.week} AS INT64) = CAST(${weekly_projections.week} AS INT64) ;;
  }
}
