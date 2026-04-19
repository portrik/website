import blogatto/config/markdown
import configuration/syntax_highlighting
import gleam/option.{None, Some}
import lustre/attribute
import lustre/element/html
import templates/blog_post

const blog_source_path = "./blog"

pub const blog_route_prefix = "blog"

pub fn configuration() -> markdown.MarkdownConfig(Nil) {
  markdown.default()
  |> markdown.markdown_path(blog_source_path)
  |> markdown.route_prefix(blog_route_prefix)
  |> markdown.syntax_highlighting(
    syntax_highlighting.ayu_dark_syntax_highlighting(),
  )
  |> markdown.template(blog_post.template)
  |> markdown.pre(fn(children) {
    html.pre([attribute.class("code-block")], children)
  })
  |> markdown.code(fn(language, children) {
    let lang_class = case language {
      Some(lang) -> "language-" <> lang
      None -> ""
    }
    html.code([attribute.class(lang_class)], children)
  })
}
