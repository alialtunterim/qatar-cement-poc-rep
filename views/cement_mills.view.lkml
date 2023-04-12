# The name of this view in Looker is "Cement Mills"
view: cement_mills {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test.cement_mills`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Active Energy Counters Specific Consumption" in Explore.

  measure: active_energy_counters_specific_consumption {
    type: number
    sql: ${TABLE}.active_energy_counters_specific_consumption ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: active_energy_counters_total {
    type: number
    sql: ${TABLE}.active_energy_counters_total ;;
  }

  measure: cement_mill_6_additives {
    type: number
    sql: ${TABLE}.cement_mill_6_additives ;;
  }

  measure: cement_mill_6_clinker {
    type: number
    sql: ${TABLE}.cement_mill_6_clinker ;;
  }

  measure: cement_mill_6_gypsum {
    type: number
    sql: ${TABLE}.cement_mill_6_gypsum ;;
  }

  measure: cement_mill_6_m6_running_hours {
    type: number
    sql: ${TABLE}.cement_mill_6_m6_running_hours ;;
  }

  measure: cement_mill_6_nergy_consumption {
    type: number
    sql: ${TABLE}.cement_mill_6_nergy_consumption ;;
  }

  measure: cement_mill_6_pecificconsumption {
    type: number
    sql: ${TABLE}.cement_mill_6_pecificconsumption ;;
  }

  measure: cement_mill_6_total_material {
    type: number
    sql: ${TABLE}.cement_mill_6_total_material ;;
  }

  measure: cement_mill_6_verage_production {
    type: number
    sql: ${TABLE}.cement_mill_6_verage_production ;;
  }

  measure: cement_mill_7_additives {
    type: number
    sql: ${TABLE}.cement_mill_7_additives ;;
  }

  measure: cement_mill_7_average_production {
    type: number
    sql: ${TABLE}.cement_mill_7_average_production ;;
  }

  measure: cement_mill_7_clinker {
    type: number
    sql: ${TABLE}.cement_mill_7_clinker ;;
  }

  measure: cement_mill_7_cm7_running_hours {
    type: number
    sql: ${TABLE}.cement_mill_7_cm7_running_hours ;;
  }

  measure: cement_mill_7_energy_consumption {
    type: number
    sql: ${TABLE}.cement_mill_7_energy_consumption ;;
  }

  measure: cement_mill_7_gypsum {
    type: number
    sql: ${TABLE}.cement_mill_7_gypsum ;;
  }

  measure: cement_mill_7_specific_consumption {
    type: number
    sql: ${TABLE}.cement_mill_7_specific_consumption ;;
  }

  measure: cement_mill_7_total_material {
    type: number
    sql: ${TABLE}.cement_mill_7_total_material ;;
  }

  measure: cement_total_production {
    type: number
    sql: ${TABLE}.cement_total_production ;;
  }

  dimension: dataset_frequency {
    type: string
    sql: ${TABLE}.dataset_frequency ;;
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

  dimension_group: start {
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

  measure: utilities_total_energy_total {
    type: number
    sql: ${TABLE}.utilities_total_energy_total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
