connection: "looker_extension_test_ecom"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: order_items {
  label: "ecomm_explore"

  join: derived_table_order_facts {
    type: left_outer
    view_label: "Orders facts"
    relationship: many_to_one
    sql_on:  ${order_items.order_id}= ${derived_table_order_facts.order_id} ;;
  }

  join: derived_table_user_order_facts {
    type: left_outer
    view_label: "User Order facts"
    relationship: many_to_one
    sql_on: ${order_items.user_id}=${derived_table_user_order_facts.user_id} ;;
  }

  join: inventory_items {
    type: full_outer
    relationship: one_to_one
    sql_on: ${inventory_items.id}=${order_items.inventory_item_id} ;;
  }

  join: users {
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.user_id}=${users.id} ;;
  }

  join: products {
    view_label: "Products"
    type: left_outer
    relationship: many_to_one
    sql_on: ${products.id} = ${inventory_items.product_id} ;;
  }

  join: distribution_centers {
    view_label: "Distribution Center"
    type: left_outer
    sql_on: ${distribution_centers.id} = ${inventory_items.product_distribution_center_id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    relationship: many_to_one
    sql_on: ${orders.order_id}=${order_items.order_id} ;;
  }
}
