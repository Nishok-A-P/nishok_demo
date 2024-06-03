# If necessary, uncomment the line below to include explore_source.

# include: "test_ecomm.model.lkml"

view: derived_table_order_facts {
  view_label: "Order Facts"
  derived_table: {
    explore_source: order_items {
      column: order_id {}
      column: sale_price {}
      column: status {}
      column: total_sale_price {}
      column: user_id {}
      column: count {}
    }
  }
  dimension: order_id {
    description: ""
    type: number
  }
  dimension: sale_price {
    description: ""
    type: number
  }
  dimension: status {
    description: ""
  }
  dimension: total_sale_price {
    description: "Total sales from items sold"
    value_format: "$#,##0.00"
    type: number
  }
  dimension: user_id {
    description: ""
    type: number
  }
  dimension: count {
    description: ""
    type: number
  }
}
