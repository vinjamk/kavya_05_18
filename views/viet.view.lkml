# The name of this view in Looker is "Viet"
view: viet {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.viet ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "F ID" in Explore.

  dimension: f_id {
    type: number
    sql: ${TABLE}.f_id ;;
  }

  dimension: words_viet {
    type: string
    sql: ${TABLE}.words_viet ;;
  }
  measure: count {
    type: count
  }
}
