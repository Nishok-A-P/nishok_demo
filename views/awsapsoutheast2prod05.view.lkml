view: awsapsoutheast2prod05 {
  sql_table_name: `sqsh-developer-pocs.slot_usage.aws-ap-southeast-2-prod-05` ;;

  dimension: bytes {
    type: number
    sql: ${TABLE}.bytes ;;
  }
  dimension: count_of_jobs {
    type: number
    sql: ${TABLE}.count_of_jobs ;;
  }
  dimension: dbt_invocation_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.dbt_invocation_id ;;
  }
  dimension_group: max {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.max_time ;;
  }
  dimension_group: min {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.min_time ;;
  }
  dimension: org_id {
    type: number
    sql: ${TABLE}.org_id ;;
  }
  dimension: total_slot_ms {
    type: number
    sql: ${TABLE}.total_slot_ms ;;
  }
  measure: count {
    type: count
  }
}
