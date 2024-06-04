view: order_items {
  sql_table_name: `genaipoc-396111.thelook_ecom.order_items` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: delivered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.delivered_at ;;
  }
  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }
  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension_group: returned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.returned_at ;;
  }
  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }
  dimension_group: shipped {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.shipped_at ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_sale_price {
    label: "Total Sale Price"
    description: "Total sales from items sold"
    type: sum
    value_format_name: usd
    sql: ${sale_price} ;;
    drill_fields: [detail*]
  }
  measure: total_profit_logic {
    type: number
    sql: ${total_sale_price} - ${inventory_items.total_cost} ;;
    value_format_name: usd
    html: {% if value >= 1000 %}
      <font color="green">{{rendered_value}}</font>
      {% elsif value >= 1 and value < 1000 %}
      <font color="goldenrod">{{rendered_value}}</font>
      {% else %}
      <font color="red">{{rendered_value}}</font>
      {% endif %}
      ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  status,
  sale_price,
  shipped_date
  ]
  }

}
