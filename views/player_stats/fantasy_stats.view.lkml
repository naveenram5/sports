view: fantasy_stats {
  sql_table_name: `football_stats.fantasy_stats` ;;

  dimension: att {
    type: number
    sql: ${TABLE}.att ;;
  }
  dimension: att_rush {
    type: number
    sql: ${TABLE}.att_rush ;;
  }
  dimension: cmp {
    type: number
    sql: ${TABLE}.cmp ;;
  }
  dimension_group: date_of_week {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_week ;;
  }
  dimension: fl {
    type: number
    sql: ${TABLE}.fl ;;
  }
  dimension: fpts {
    type: number
    sql: ${TABLE}.fpts ;;
  }
  dimension: fpts_per_game {
    type: number
    sql: ${TABLE}.fpts_per_game ;;
  }
  dimension: g {
    type: number
    sql: ${TABLE}.g ;;
  }
  dimension: int {
    type: number
    sql: ${TABLE}.int ;;
  }
  dimension: pct {
    type: number
    sql: ${TABLE}.pct ;;
  }
  dimension: player {
    type: string
    sql: ${TABLE}.player ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: rost {
    type: string
    sql: ${TABLE}.rost ;;
  }
  dimension: sacks {
    type: number
    sql: ${TABLE}.sacks ;;
  }
  dimension: td {
    type: number
    sql: ${TABLE}.td ;;
  }
  dimension: td_rush {
    type: number
    sql: ${TABLE}.td_rush ;;
  }
  dimension: week_of_season {
    type: number
    sql: ${TABLE}.week_of_season ;;
  }
  dimension: y_per_att {
    type: number
    sql: ${TABLE}.y_per_att ;;
  }
  dimension: yds {
    type: number
    sql: ${TABLE}.yds ;;
  }
  dimension: yds_rush {
    type: number
    sql: ${TABLE}.yds_rush ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
