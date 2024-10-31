view: fantasy_stats_dl {
  sql_table_name: `football_stats.fantasy_stats_dl` ;;

  dimension: assist {
    type: number
    sql: ${TABLE}.assist ;;
  }
  dimension_group: date_of_week {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_week ;;
  }
  dimension: def_td {
    type: number
    sql: ${TABLE}.def_td ;;
  }
  dimension: ff {
    type: number
    sql: ${TABLE}.ff ;;
  }
  dimension: fpts {
    type: number
    sql: ${TABLE}.fpts ;;
  }
  dimension: fpts_per_game {
    type: number
    sql: ${TABLE}.fpts_per_game ;;
  }
  dimension: fr {
    type: number
    sql: ${TABLE}.fr ;;
  }
  dimension: g {
    type: number
    sql: ${TABLE}.g ;;
  }
  dimension: int {
    type: number
    sql: ${TABLE}.int ;;
  }
  dimension: pd {
    type: number
    sql: ${TABLE}.pd ;;
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
  dimension: sack {
    type: number
    sql: ${TABLE}.sack ;;
  }
  dimension: tackle {
    type: number
    sql: ${TABLE}.tackle ;;
  }
  dimension: week_of_season {
    type: number
    sql: ${TABLE}.week_of_season ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
