view: mess {
  sql_table_name: `bigquery-public-data.thelook_ecommerce.mess` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.i
  }
}