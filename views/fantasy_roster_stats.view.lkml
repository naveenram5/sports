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
  dimension: playoff_pct {
    type: number
    sql: ${TABLE}.playoff_pct ;;
  }
  dimension: points_against {
    type: number
    sql: ${TABLE}.points_against ;;
  }
  dimension: points_for {
    type: number
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
}