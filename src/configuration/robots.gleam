import blogatto/config/robots
import configuration/rss
import configuration/sitemap

pub fn configuration() {
  robots.RobotsConfig(
    sitemap_url: rss.website_url <> sitemap.sitemap_route,
    robots: [
      robots.Robot(
        user_agent: "*",
        allowed_routes: ["/"],
        disallowed_routes: [],
      ),
    ],
  )
}
