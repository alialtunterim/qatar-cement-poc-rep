# The name of this view in Looker is "Raw Will"
view: raw_will {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test.raw_will`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dataset Frequency" in Explore.

  dimension: dataset_frequency {
    type: string
    sql: ${TABLE}.dataset_frequency ;;
  }

  dimension: dry_average_production {
    type: number
    sql: ${TABLE}.dry_average_production ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_dry_average_production {
    type: sum
    sql: ${dry_average_production} ;;
  }

  measure: average_dry_average_production {
    type: average
    sql: ${dry_average_production} ;;
  }

  dimension: dry_clay_shale {
    type: number
    sql: ${TABLE}.dry_clay_shale ;;
  }

  dimension: dry_iron_ore {
    type: number
    sql: ${TABLE}.dry_iron_ore ;;
  }

  dimension: dry_limestone {
    type: number
    sql: ${TABLE}.dry_limestone ;;
  }

  dimension: dry_sand {
    type: number
    sql: ${TABLE}.dry_sand ;;
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

  dimension: moisture_clay_shale {
    type: number
    sql: ${TABLE}.moisture_clay_shale ;;
  }

  dimension: moisture_iron_ore {
    type: number
    sql: ${TABLE}.moisture_iron_ore ;;
  }

  dimension: moisture_limestone {
    type: number
    sql: ${TABLE}.moisture_limestone ;;
  }

  dimension: moisture_sand {
    type: number
    sql: ${TABLE}.moisture_sand ;;
  }

  dimension: raw_mill_running_hours {
    type: number
    sql: ${TABLE}.raw_mill_running_hours ;;
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

  dimension: wet_average_production {
    type: number
    sql: ${TABLE}.wet_average_production ;;
  }

  dimension: wet_clay_shale {
    type: number
    sql: ${TABLE}.wet_clay_shale ;;
  }

  dimension: wet_iron_ore {
    type: number
    sql: ${TABLE}.wet_iron_ore ;;
  }

  dimension: wet_limestone {
    type: number
    sql: ${TABLE}.wet_limestone ;;
  }

  dimension: wet_sand {
    type: number
    sql: ${TABLE}.wet_sand ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
