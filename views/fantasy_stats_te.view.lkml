view: fantasy_stats_te {
  sql_table_name: `football_stats.fantasy_stats_te` ;;

  dimension: 20_plus {
    type: number
    sql: ${TABLE}.`20_plus` ;;
  }
  dimension: att_rush {
    type: number
    sql: ${TABLE}.att_rush ;;
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
  dimension: lg {
    type: number
    sql: ${TABLE}.lg ;;
  }
  dimension: player {
    type: string
    sql: ${TABLE}.player ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: rec {
    type: number
    sql: ${TABLE}.rec ;;
  }
  dimension: rost {
    type: string
    sql: ${TABLE}.rost ;;
  }
  dimension: td {
    type: number
    sql: ${TABLE}.td ;;
  }
  dimension: td_rush {
    type: number
    sql: ${TABLE}.td_rush ;;
  }
  dimension: tgt {
    type: number
    sql: ${TABLE}.tgt ;;
  }
  dimension: week_of_season {
    type: number
    sql: ${TABLE}.week_of_season ;;
  }
  dimension: y_per_rec {
    type: number
    sql: ${TABLE}.y_per_rec ;;
  }
  dimension: yds_rec {
    type: number
    sql: ${TABLE}.yds_rec ;;
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
