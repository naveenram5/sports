include: "/views/espn_stats/fantasy_roster_stats.view.lkml"

explore: fantasy_roster_stats {
  label: "Consolidated ESPN Fantasy Roster Stats"
  description: "Explore weekly & season-long Fantasy Football Stats for Bytecode League"
  persist_with: sports_analytics_default_datagroup
}
