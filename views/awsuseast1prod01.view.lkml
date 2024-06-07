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
  dimension: time_elapsed {
    type: number
    sql: TIMESTAMP_DIFF(${max_creation_raw},${min_creation_raw},SECOND) ;;
  }
  dimension: epoch_max_time {
    sql: UNIX_SECONDS(${TABLE}.max_creation_time) ;;
  }
  dimension: epoch_min_time {
    sql: UNIX_SECONDS(${TABLE}.min_creation_time) ;;
  }
  dimension: epoch_difference {
    type: number
    sql: ${epoch_max_time} - ${epoch_min_time} ;;
  }
  measure: count {
    type: count
  }
  measure: average_jobs {
    type: average
    sql: ${count_of_jobs} ;;
  }
  measure: total_bytes {
    type: sum
    sql: ${total_bytes_processed} ;;
  }
  measure: total_jobs {
    type: sum
    sql: ${count_of_jobs} ;;
  }
  measure: Average_jobs_per_day {
    type: number
    sql: ${total_jobs}/COUNT(DISTINCT${max_creation_date}) ;;
  }
  measure: max_slot_usage {
    type: number
    sql: max(${total_slot_ms}) ;;
  }
  measure: min_slot_usage {
    type: number
    sql: min(${total_slot_ms}) ;;
  }
  measure: max_bytes_processed {
    type: number
    sql: max(${total_bytes_processed}) ;;
  }
  measure: min_bytes_processed {
    type: number
    sql: min(${total_bytes_processed}) ;;
  }
}
