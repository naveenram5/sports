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
  measure: total_home_projected_points {
    type:sum
    sql:${home_projected}  ;;
  }
  measure: total_home_points {
    type:sum
    sql:${home_score}  ;;
  }
  measure: total_away_projected_points {
    type:sum
    sql:${away_projected}  ;;
  }
  measure: total_away_points {
    type:sum
    sql:${away_score}  ;;
  }
  measure: total_points {
    type: number
    sql: ${total_home_points} + ${total_away_points} ;;
  }
  measure: average_total_points {
    type: number
    value_format_name: decimal_2
    sql: ${total_points}/15 ;;
  }
  measure: total_projected_points {
    type: number
    sql: ${total_home_projected_points} + ${total_away_projected_points} ;;
  }
  measure: average_projected_points {
    type: number
    value_format_name: decimal_2
    sql:${total_projected_points}/15 ;;
  }
  measure: weekly_pct_difference {
    type: number
    value_format_name: percent_2
    sql: (${average_total_points}/${average_projected_points})-1 ;;
  }
  measure: week_measure {
    type: number
    sql: ${week} ;;
  }
  measure: current_week {
    type: number
    sql: max(${week_measure}) ;;
  }

}
