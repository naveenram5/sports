view: fantasy_roster_stats {
  sql_table_name: `sport-analytics-project.weekly_fantasy_football_projections.fantasy_roster_stats` ;;

  dimension: acquisitions {
    type: number
    sql: ${TABLE}.acquisitions ;;
  }
  dimension: draft_projected_rank {
    type: number
    sql: ${TABLE}.draft_projected_rank ;;
  }
  dimension: drops {
    type: number
    sql: ${TABLE}.drops ;;
  }
  dimension: final_standing {
    type: number
    sql: ${TABLE}.final_standing ;;
  }
  dimension: losses {
    type: number
    sql: ${TABLE}.losses ;;
  }
  measure: playoff_pct {
    type: average
    value_format_name: decimal_2
    sql: ${TABLE}.playoff_pct ;;
  }
  dimension: points_against {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.points_against ;;
  }
  dimension: points_for {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.points_for ;;
  }
  dimension: standing {
    type: number
    sql: ${TABLE}.standing ;;
  }
  dimension: streak_length {
    type: number
    sql: ${TABLE}.streak_length ;;
  }
  dimension: streak_type {
    type: string
    sql: ${TABLE}.streak_type ;;
  }
  dimension: team_abbrev {
    type: string
    sql: ${TABLE}.team_abbrev ;;
  }
  dimension: team_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.team_id ;;
  }
  dimension: team_name {
    type: string
    sql: ${TABLE}.team_name ;;
  }
  dimension: ties {
    type: number
    sql: ${TABLE}.ties ;;
  }
  dimension: trades {
    type: number
    sql: ${TABLE}.trades ;;
  }
  dimension: wins {
    type: number
    sql: ${TABLE}.wins ;;
  }
  measure: count {
    type: count
    drill_fields: [team_name]
  }
  measure: total_points_for {
    type: sum_distinct
    sql: ${points_for} ;;
  }
  measure: average_points_for {
    type: average
    value_format_name: decimal_2
    sql: ${points_for} ;;
  }
  measure: average_points_against {
    type: average
    sql: ${points_against} ;;
  }
  measure: point_differential {
    type: number
    value_format_name: decimal_2
    sql: ${points_for} - ${points_against} ;;
  }
}
