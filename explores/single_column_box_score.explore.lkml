include: "/views/derived_tables/sdt_single_column_box_score.view.lkml"

explore: sdt_single_column_box_score {
  label: "Consolidated Fantasy Box Score"
  description: "Explore weekly & season-long breakdown of Bytecode's Fantasy League"
  persist_with: sports_analytics_default_datagroup
}
