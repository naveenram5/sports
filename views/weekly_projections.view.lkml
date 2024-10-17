view: weekly_projections {
  sql_table_name: `sport-analytics-project.weekly_projections.weekly_projections` ;;

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }
  dimension: position {
    type: string
    sql: ${TABLE}.Position ;;
  }
  dimension: projected_points {
    type: number
    sql: ${TABLE}.Projected_Points ;;
  }
  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }
  dimension: week {
    type: number
    sql: ${TABLE}.Week ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
  measure: total_projected_points {
    type: sum
    sql: ${projected_points} ;;
  }
}
