view: dummy_2 {
  sql_table_name: demo_db.dummy_2 ;;

  dimension: a {
    type: string
    sql: ${TABLE}.a ;;
  }
  dimension: b {
    type: string
    sql: ${TABLE}.b ;;
  }
  measure: count {
    type: count
  }

  dimension: counpon_category {
    type: string
    label: "クーポン分類"
    case: {
      when: { sql:${TABLE}.b = 'Alpha';; label: "a マーケ自動"}
      when: { sql:${TABLE}.b = 'Delta';; label: "b マーケ"}
      else: "その他クーポン"
    }
  }
}
