view: awsuseast1prod01 {
  sql_table_name: `sqsh-developer-pocs.slot_usage.aws-us-east-1-prod-01` ;;

  dimension: count_of_jobs {
    type: number
    sql: ${TABLE}.count_of_jobs ;;
  }
  dimension: dbt_invocation_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.dbt_invocation_id ;;
  }
  dimension_group: max_creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.max_creation_time ;;
  }
  dimension_group: min_creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.min_creation_time ;;
  }
  dimension_group: min_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.min_end_time ;;
  }
  dimension_group: min_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.min_start_time ;;
  }
  dimension: org_id {
    type: number
    sql: ${TABLE}.org_id ;;
  }
  dimension: total_bytes_processed {
    type: number
    sql: ${TABLE}.total_bytes_processed ;;
  }
  dimension: total_slot_ms {
    type: number
    sql: ${TABLE}.total_slot_ms ;;
  }
  measure: count {
    type: count
  }
}
