# The name of this view in Looker is "Kiln Cooler"
view: kiln_cooler {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test.kiln_cooler`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Average Production Td" in Explore.

  measure: average_production_td {
    type: sum
    sql: ${TABLE}.average_production_td ;;
  }

  measure: average_production_th {
    type: sum
    sql: ${TABLE}.average_production_th ;;
  }

  dimension: dataset_frequency {
    type: string
    sql: ${TABLE}.dataset_frequency ;;
  }

  measure: electric_consuption_total_clinker {
    type: sum
    sql: ${TABLE}.electric_consuption_total_clinker ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.end_date ;;
  }

  measure: gas_calorific_valu {
    type: sum
    sql: ${TABLE}.gas_calorific_valu ;;
  }

  measure: gas_volum_aux_burner {
    type: sum
    sql: ${TABLE}.gas_volum_aux_burner ;;
  }

  measure: gas_volume_main_burner {
    type: sum
    sql: ${TABLE}.gas_volume_main_burner ;;
  }

  measure: gas_volume_pc_burner {
    type: sum
    sql: ${TABLE}.gas_volume_pc_burner ;;
  }

  measure: kiln_mtbs_30_day {
    type: sum
    sql: ${TABLE}.kiln_mtbs_30_day ;;
  }

  measure: kiln_number_of_stoppag {
    type: sum
    sql: ${TABLE}.kiln_number_of_stoppag ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: kiln_running_hours {
    type: sum
    sql: ${TABLE}.kiln_running_hours ;;
  }

  measure: ratio {
    type: average
    sql: ${TABLE}.ratio ;;
  }

  measure: specific_heat_consuption {
    type: sum
    sql: ${TABLE}.specific_heat_consuption ;;
  }

  dimension_group: _ {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.start_date ;;
  }

  measure: total_clinker {
    type: sum
    sql: ${TABLE}.total_clinker ;;
  }

  measure: total_energy {
    type: sum
    sql: ${TABLE}.total_energy ;;
  }

  measure: total_meal {
    type: sum
    sql: ${TABLE}.total_meal ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
