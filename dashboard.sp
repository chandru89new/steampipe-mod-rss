dashboard "many_withs_base" {
  title = "Many Withs Base"
  card {
    base = card.g1
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