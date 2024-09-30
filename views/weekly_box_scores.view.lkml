view: weekly_box_scores {
  sql_table_name: `sport-analytics-project.weekly_fantasy_football_projections.weekly_box_scores` ;;

  dimension: away_projected {
    type: number
    sql: ${TABLE}.away_projected ;;
  }
  dimension: away_score {
    type: number
    sql: ${TABLE}.away_score ;;
  }
  dimension: away_team {
    type: string
    sql: ${TABLE}.away_team ;;
  }
  dimension: home_projected {
    type: number
    sql: ${TABLE}.home_projected ;;
  }
  dimension: home_score {
    type: number
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
}
