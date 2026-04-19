import blogatto/config/sitemap

pub const sitemap_route = "/sitemap.xml"

pub fn configuration() -> sitemap.SitemapConfig {
  sitemap.new(sitemap_route)
}
