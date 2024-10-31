view: fantasy_stats_k {
  sql_table_name: `football_stats.fantasy_stats_k` ;;

  dimension: 1_19 {
    type: number
    sql: ${TABLE}.`1_19` ;;
  }
  dimension: 20_29 {
    type: number
    sql: ${TABLE}.`20_29` ;;
  }
  dimension: 30_39 {
    type: number
    sql: ${TABLE}.`30_39` ;;
  }
  dimension: 40_49 {
    type: number
    sql: ${TABLE}.`40_49` ;;
  }
  dimension: 50_plus {
    type: number
    sql: ${TABLE}.`50_plus` ;;
  }
  dimension_group: date_of_week {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_week ;;
  }
  dimension: fg {
    type: number
    sql: ${TABLE}.fg ;;
  }
  dimension: fga {
    type: number
    sql: ${TABLE}.fga ;;
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
  dimension: week_of_season {
    type: number
    sql: ${TABLE}.week_of_season ;;
  }
  dimension: xps {
    type: number
    sql: ${TABLE}.XPS ;;
  }
  dimension: xpt {
    type: number
    sql: ${TABLE}.XPT ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
