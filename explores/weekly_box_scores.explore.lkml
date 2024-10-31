include: "/views/espn_stats/weekly_box_scores.view.lkml"

explore: weekly_box_scores {
  label: "Weekly ESPN Box Scores"
  description: "Explore the Week-to-Week Breakdown of Bytecode's Fantasy Matchups"
  persist_with: sports_analytics_default_datagroup
}
