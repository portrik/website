import blogatto/config/feed/rss

pub const website_url = "https://dvoracek.dev"

pub fn configuration() -> rss.RssFeedConfig(Nil) {
  rss.new(
    "Patrik Dvořáček's Blog",
    website_url,
    "The personal blog of Patrik Dvořáček",
  )
  |> rss.language("en-gb")
  |> rss.generator("Blogatto")
}
