# The name of this view in Looker is "Limestone"
view: limestone {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test.limestone`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Average Production" in Explore.

  dimension: average_production {
    type: number
    sql: ${TABLE}.average_production ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_average_production {
    type: sum
    sql: ${average_production} ;;
  }

  measure: average_average_production {
    type: average
    sql: ${average_production} ;;
  }

  dimension: clay_pile_c {
    type: number
    sql: ${TABLE}.clay_pile_c ;;
  }

  dimension: clay_pile_d {
    type: number
    sql: ${TABLE}.clay_pile_d ;;
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

  dimension: energy_consumption {
    type: number
    sql: ${TABLE}.energy_consumption ;;
  }

  dimension: limestone_pile_a {
    type: number
    sql: ${TABLE}.limestone_pile_a ;;
  }

  dimension: limestone_pile_b {
    type: number
    sql: ${TABLE}.limestone_pile_b ;;
  }

  dimension: motor_1_running_time {
    type: number
    sql: ${TABLE}.motor_1_running_time ;;
  }

  dimension: motor_2_running_time {
    type: number
    sql: ${TABLE}.motor_2_running_time ;;
  }

  dimension: specific_consumption {
    type: number
    sql: ${TABLE}.specific_consumption ;;
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

  dimension: total_production {
    type: number
    sql: ${TABLE}.total_production ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
