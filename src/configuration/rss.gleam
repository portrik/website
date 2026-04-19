import blogatto/config/feed

pub const website_url = "https://dvoracek.dev"

pub fn configuration() -> feed.FeedConfig(Nil) {
  feed.new(
    "Patrik Dvořáček's Blog",
    website_url,
    "The personal blog of Patrik Dvořáček",
  )
  |> feed.language("en-gb")
  |> feed.generator("Blogatto")
}
