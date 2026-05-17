import blogatto
import blogatto/config
import blogatto/error
import configuration/post
import configuration/robots
import configuration/rss
import configuration/sitemap
import configuration/syntax_highlighting
import gleam/io
import pages/blog
import pages/index
import templates/blog_post

const output_directory = "./dist"

const static_directory = "./static"

pub fn configuration() -> config.Config(Nil) {
  let syntax_higlighting = syntax_highlighting.ayu_dark_syntax_highlighting()
  let post_configuration =
    post.configuration(syntax_higlighting, blog_post.template)

  config.new(rss.website_url)
  |> config.output_dir(output_directory)
  |> config.static_dir(static_directory)
  |> config.post(post_configuration)
  |> config.rss_feed(rss.configuration())
  |> config.sitemap(sitemap.configuration())
  |> config.robots(robots.configuration())
  |> config.route("/", index.view)
  |> config.route("/blog", blog.view)
}

pub fn main() -> Nil {
  let configuration = configuration()

  case blogatto.build(configuration) {
    Ok(Nil) -> io.println("Site built successfully in " <> output_directory)
    Error(build_error) ->
      io.println_error("Build failed: " <> error.describe_error(build_error))
  }
}
