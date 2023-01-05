mod "rss-sights" {
  title = "steampipe-mod-rss-insights1"
}

query "rss_steampipe_io_blog_post_totals" {
  sql = <<-EOQ
    select
      count(*) as "Total blog posts"
    from
      rss_item
    where
      feed_link = 'https://steampipe.io/blog/feed.xml'
  EOQ
}

query "rss_steampipe_io_blog_posts_by_month" {
  sql = <<-EOQ
    select
      to_char(date_trunc('month', published), 'YYYY-MM') as "Month",
      count(*) as "Total Blog Posts"
    from
      rss_item
    where
      feed_link = 'https://steampipe.io/blog/feed.xml'
    group by
      "Month";
  EOQ
}
