view: dummy {
  sql_table_name: demo_db.dummy ;;

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
      when: { sql:${TABLE}.b = 'Alpha';; label: "a_マーケ自動"}
      when: { sql:${TABLE}.b = 'Delta';; label: "b_マーケ"}
      else: "その他クーポン"
    }
  }
}
