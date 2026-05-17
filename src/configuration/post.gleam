import blogatto/config/post as post_configuration
import blogatto/config/post/code.{type SyntaxHighlightingConfig}
import blogatto/post.{type Post}
import gleam/option.{None, Some}
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

const blog_source_path = "./blog"

pub const blog_route_prefix = "blog"

pub fn configuration(
  syntax_highlighting: SyntaxHighlightingConfig(Nil),
  template: fn(Post(Nil), List(Post(Nil))) -> Element(Nil),
) -> post_configuration.PostConfig(Nil) {
  post_configuration.default()
  |> post_configuration.path(blog_source_path)
  |> post_configuration.route_prefix(blog_route_prefix)
  |> post_configuration.syntax_highlighting(syntax_highlighting)
  |> post_configuration.template(template)
  |> post_configuration.pre(fn(children) {
    html.pre([attribute.class("code-block")], children)
  })
  |> post_configuration.code(fn(language, children) {
    let lang_class = case language {
      Some(lang) -> "language-" <> lang
      None -> ""
    }
    html.code([attribute.class(lang_class)], children)
  })
}
