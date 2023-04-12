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

  measure: dry_average_production {
    type: sum
    sql: ${TABLE}.dry_average_production ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: dry_clay_shale {
    type: sum
    sql: ${TABLE}.dry_clay_shale ;;
  }

  measure: dry_iron_ore {
    type: sum
    sql: ${TABLE}.dry_iron_ore ;;
  }

  measure: dry_limestone {
    type: sum
    sql: ${TABLE}.dry_limestone ;;
  }

  measure: dry_sand {
    type: sum
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

  measure: energy_consumption {
    type: sum
    sql: ${TABLE}.energy_consumption ;;
  }

  measure: moisture_clay_shale {
    type: sum
    sql: ${TABLE}.moisture_clay_shale ;;
  }

  measure: moisture_iron_ore {
    type: sum
    sql: ${TABLE}.moisture_iron_ore ;;
  }

  measure: moisture_limestone {
    type: sum
    sql: ${TABLE}.moisture_limestone ;;
  }

  measure: moisture_sand {
    type: sum
    sql: ${TABLE}.moisture_sand ;;
  }

  measure: raw_mill_running_hours {
    type: sum
    sql: ${TABLE}.raw_mill_running_hours ;;
  }

  measure: specific_consumption {
    type: sum
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

  measure: wet_average_production {
    type: sum
    sql: ${TABLE}.wet_average_production ;;
  }

  measure: wet_clay_shale {
    type: sum
    sql: ${TABLE}.wet_clay_shale ;;
  }

  measure: wet_iron_ore {
    type: sum
    sql: ${TABLE}.wet_iron_ore ;;
  }

  measure: wet_limestone {
    type: sum
    sql: ${TABLE}.wet_limestone ;;
  }

  measure: wet_sand {
    type: sum
    sql: ${TABLE}.wet_sand ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
