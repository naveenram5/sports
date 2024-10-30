view: fantasy_roster_stats {
  sql_table_name: `sport-analytics-project.weekly_fantasy_football_projections.fantasy_roster_stats` ;;

  dimension: acquisitions {
    type: number
    description: "Number of players acquired from the waiver wire"
    sql: ${TABLE}.acquisitions ;;
  }
  dimension: draft_projected_rank {
    type: number
    description: "The projected final rank of a team based on draft day"
    sql: ${TABLE}.draft_projected_rank ;;
  }
  dimension: drops {
    type: number
    description: "Number of players dropped from team roster"
    sql: ${TABLE}.drops ;;
  }
  dimension: final_standing {
    type: number
    description: "Final team rank at the end of the fantasy football season"
    sql: ${TABLE}.final_standing ;;
  }
  dimension: losses {
    type: number
    description: "Total number of losses"
    sql: ${TABLE}.losses ;;
  }
  measure: playoff_pct {
    type: average
    description: "Percent chance of a team to make it to the playoffs"
    value_format_name: decimal_2
    sql: ${TABLE}.playoff_pct ;;
  }
  dimension: points_against {
    type: number
    description: "Total points scored against a team"
    value_format_name: decimal_2
    sql: ${TABLE}.points_against ;;
  }
  dimension: points_for {
    type: number
    description: "Total points a team has scored against opponents"
    value_format_name: decimal_2
    sql: ${TABLE}.points_for ;;
  }
  dimension: standing {
    type: number
    description: "Rank based on record and points for"
    sql: ${TABLE}.standing ;;
  }
  dimension: streak_length {
    type: number
    description: "Amount of games the streak has persisted over"
    sql: ${TABLE}.streak_length ;;
  }
  dimension: streak_type {
    type: string
    description: "Winning streak or losing streak"
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
    description: "Number of trades a team has succesffuly made"
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
    description: "Total amount of points scored through all teams"
    type: sum_distinct
    sql: ${points_for} ;;
  }
  measure: average_points_for {
    type: average
    description: "Average amount of points scored through all teams"
    value_format_name: decimal_2
    sql: ${points_for} ;;
  }
  measure: average_points_against {
    type: average
    description: "Average amount of points scored against all teams"
    sql: ${points_against} ;;
  }
  measure: point_differential {
    type: number
    description: "Difference between points scored less points against"
    value_format_name: decimal_2
    sql: ${points_for} - ${points_against} ;;
  }
}
