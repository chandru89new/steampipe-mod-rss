chart "chart_by_month" {
  title = "Blog posts by month"
  sql = query.rss_steampipe_io_blog_posts_by_month.sql
}
dashboard "dashboard_1" {
  title = "Dashboard RSS"

  text {
    value = "Test description."
  }

  card {
    sql = query.rss_steampipe_io_blog_post_totals.sql
  }

  container {
    width = 6

    text {
      value = "### Steampipe.io Blog Posts by Month"
    }

    chart {
        sql   = query.rss_steampipe_io_blog_posts_by_month.sql
    }
  }

  container {
    width = 6

    text {
      value = "### Steampipe.io Blog Posts by Month"
    }

    chart {
      sql   = query.rss_steampipe_io_blog_posts_by_month.sql
      type  = "bar"
    }
  }
}

