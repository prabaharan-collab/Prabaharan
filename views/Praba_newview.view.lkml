# If necessary, uncomment the line below to include explore_source.
# include: "looker123.model.lkml"

view: praba_newview {
  derived_table: {
    explore_source: orders {
      column: count {}
      column: state { field: users.state }
    }
  }
  dimension: count {
    description: ""
    type: number
  }
  dimension: state {
    description: ""
  }
}
