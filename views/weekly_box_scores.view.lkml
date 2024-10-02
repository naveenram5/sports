view: weekly_box_scores {
  sql_table_name: `sport-analytics-project.weekly_fantasy_football_projections.weekly_box_scores` ;;

  dimension: away_projected {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.away_projected ;;
  }
  dimension: away_score {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.away_score ;;
  }
  dimension: away_team {
    type: string
    sql: ${TABLE}.away_team ;;
  }
  dimension: home_projected {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.home_projected ;;
  }
  dimension: home_score {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.home_score ;;
  }
  dimension: home_team {
    type: string
    sql: ${TABLE}.home_team ;;
  }
  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }
  measure: count {
    type: count
  }
  measure: away_points_from_projection{
    type: number
    value_format_name: decimal_2
    sql: ${away_score} - ${away_projected} ;;
  }
  measure: home_points_from_projection {
    type: number
    value_format_name: decimal_2
    sql: ${home_score} - ${home_projected} ;;
  }
  measure: match_differential {
    type: number
    description: "Point difference of home versus away"
    value_format_name: decimal_2
    sql: abs(${home_score} - ${away_score}) ;;
  }
  measure: average_projected_points {
    type: number
    sql:( ${away_projected} + ${home_projected})/15  ;;
  }
  measure: average_total_points {
    type: number
    sql: (${away_score} + ${home_score})/15 ;;
  }
}
