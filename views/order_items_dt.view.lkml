view: order_items_dt {
    derived_table: {
      sql: SELECT * from demo_db.order_items ;;
    }
    drill_fields: [id]
    dimension: id {
      description: ""
      primary_key: yes
      type: number
    }
    dimension: inventory_item_id {
      description: ""
      type: number
    }
    dimension: order_id {
      description: ""
      type: number
    }
    dimension: phone {
      description: ""
    }
    dimension: phones {
      description: ""
    }
    dimension: returned_date {
      description: ""
      type: date
    }
    dimension: sale_price {
      description: ""
      type: number
    }
  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }
  }
