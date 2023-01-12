dashboard "many_withs_base" {
  title = "Many Withs Base"
  card {
    base = card.g1
  }
  graph {
    base = graph.g11
  }
}

graph "g11"{
  with "n1" {
    query = query.q1
  }
  node "n1" {
    sql = <<-EOQ
    select
      $1 as id,
      $1 as title
EOQ
    args = [ with.n1.rows[0]]
  }
}

card "g1"{
  base = card.g2
}

card "g2"{
  query = query.q3
}

query "q1"{
  sql = <<-EOQ
          select 'n1'
        EOQ
}

query "q2"{
  sql = <<-EOQ
          select 'n1_dashboard'
        EOQ
}

query "q3"{
  sql = <<-EOQ
          select 'n2_dashboard'
        EOQ
}