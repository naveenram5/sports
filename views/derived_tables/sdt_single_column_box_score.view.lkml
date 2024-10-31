view: sdt_single_column_box_score {
    derived_table: {
      sql: SELECT week,home_team as team,home_projected as projected_points,home_score as points_for
              FROM `sport-analytics-project.weekly_fantasy_football_projections.weekly_box_scores`
              UNION DISTINCT
              SELECT week,away_team,away_projected,away_score
              FROM `sport-analytics-project.weekly_fantasy_football_projections.weekly_box_scores`
              WHERE away_score != 0
              ORDER BY week,team ;;
    }

    dimension: points_for {
      type: number
      sql: ${TABLE}.points_for ;;
    }

    dimension: projected_points {
      type: number
      sql: ${TABLE}.projected_points ;;
    }

    dimension: team {
      type: string
      sql: ${TABLE}.team ;;
    }

    dimension: week {
      type: number
      sql: ${TABLE}.week ;;
    }

    measure: current_week {
      type: number
      sql: max(${week_measure}) ;;
    }

   measure: highest_points_scored {
      type: max
      sql: ${points_for} ;;
    }

    measure: week_measure {
      type: number
      sql: ${week} ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    set: detail {
      fields: [
        week,
        team,
        projected_points,
        points_for
      ]
    }
  }
