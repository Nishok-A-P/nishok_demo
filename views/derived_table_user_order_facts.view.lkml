
view: derived_table_user_order_facts {
  view_label: "User Order Facts"
  derived_table: {
    sql: SELECT user_id
              , COUNT(DISTINCT order_id) AS lifetime_orders
              , SUM(sale_price) AS lifetime_revenue
              , CAST(MIN(created_at)  AS TIMESTAMP) AS first_order
              , CAST(MAX(created_at)  AS TIMESTAMP)  AS latest_order
              , COUNT(DISTINCT FORMAT_TIMESTAMP('%Y%m', created_at))  AS number_of_distinct_months_with_orders
            FROM looker-private-demo.ecomm.order_items
            GROUP BY user_id
          ; ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: lifetime_orders {
    type: number
    sql: ${TABLE}.lifetime_orders ;;
  }

  dimension: lifetime_revenue {
    type: number
    sql: ${TABLE}.lifetime_revenue ;;
  }

  dimension_group: first_order {
    type: time
    sql: ${TABLE}.first_order ;;
  }

  dimension_group: latest_order {
    type: time
    sql: ${TABLE}.latest_order ;;
  }

  dimension: number_of_distinct_months_with_orders {
    type: number
    sql: ${TABLE}.number_of_distinct_months_with_orders ;;
  }

  set: detail {
    fields: [
      user_id,
      lifetime_orders,
      lifetime_revenue,
      first_order_time,
      latest_order_time,
      number_of_distinct_months_with_orders
    ]
  }
}
