view: consolidated_player_stats {
  derived_table: {
    sql:
        SELECT
         week_of_season,
         date_of_week,
         player,
         fpts
        FROM `sport-analytics-project.football_stats.fantasy_stats_rb`
        WHERE week_of_season is not null

        UNION ALL

        SELECT
        week_of_season,
        date_of_week,
        player,
        fpts
        FROM `sport-analytics-project.football_stats.fantasy_stats`
        WHERE week_of_season is not null

        UNION ALL

        SELECT
        week_of_season,
        date_of_week,
        player,
        fpts
        FROM `sport-analytics-project.football_stats.fantasy_stats_wr`
        WHERE week_of_season is not null

        UNION ALL

        SELECT
        week_of_season,
        date_of_week,
        player,
        fpts
        FROM `sport-analytics-project.football_stats.fantasy_stats_te`
        WHERE week_of_season is not null

        UNION ALL

        SELECT
        week_of_season,
        date_of_week,
        player,
        fpts
        FROM `sport-analytics-project.football_stats.fantasy_stats_dst`
        WHERE week_of_season is not null;;
  }

  dimension: player_name {
    label: "Player Name"
    description: "Player Name"
    type: string
    sql: ${TABLE}.player ;;
  }

  dimension: week {
    label: "Week Of Season"
    description: "Week of Season"
    type: number
    sql: ${TABLE}.week_of_season ;;
  }

  dimension_group: date_of_week {
    label: "Date of Week"
    description: "Date of the Monday of Given NFL Week"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_week ;;
  }

  dimension: fantasy_points {
    label: "Fantasy Points Scored"
    description: "Weekly Fantasy Points Scored"
    type: number
    sql: ${TABLE}.fpts ;;
  }

  dimension: is_most_recent_week {
    type: yesno
    sql: ${date_of_week_date} = DATE(DATE_ADD(CURRENT_DATE, INTERVAL -7 DAY) - INTERVAL (EXTRACT(DAYOFWEEK FROM CURRENT_DATE) - 2) DAY) ;;
  }

  measure: total_fantasy_points {
    label: "Total Fantasy Points Scored"
    description: "Total Fantasy Points Scored"
    type: sum
    sql: ${TABLE}.fpts ;;
  }

  measure: weekly_pct_diff {
    label: "Actual Points Scored vs. Projected - Weekly"
    description: "Actual Points Scored vs. Projected - Weekly"
    type: number
    value_format_name: percent_0
    sql: (${fantasy_points} - weekly_projections.projected_points) / NULLIF(weekly_projections.projected_points, 0)   ;;
  }

  measure: total_pct_diff {
    label: "Actual Points Scored vs. Projected - Season"
    description: "Actual Points Scored vs. Projected - Season"
    type: number
    value_format_name: percent_0
    sql: (${total_fantasy_points} - weekly_projections.total_projected_points) / NULLIF(weekly_projections.total_projected_points, 0)   ;;
  }

}
