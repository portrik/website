import blogatto/config/markdown
import blogatto/post.{type Post}
import configuration/syntax_highlighting
import gleam/option.{None, Some}
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

const blog_source_path = "./blog"

const blog_route_prefix = "blog"

fn blog_post_template(
  post: Post(Nil),
  _all_posts: List(Post(Nil)),
) -> Element(Nil) {
  let language = option.unwrap(post.language, "en")

  html.html([attribute.lang(language)], [
    html.head([], [
      html.meta([attribute.charset("UTF-8")]),

      html.meta([
        attribute.name("viewport"),
        attribute.content("width=device-width, initial-scale=1"),
      ]),

      html.title([], post.title),

      html.meta([
        attribute.name("description"),
        attribute.content(post.description),
      ]),

      html.link([attribute.rel("stylesheet"), attribute.href("/css/styles.css")]),
    ]),

    html.body([], [
      html.header([], [
        html.nav([], [html.a([attribute.href("/blog")], [element.text("Back")])]),
      ]),

      html.main([], [
        html.article([], [
          html.h1([], [element.text(post.title)]),
          html.p([], [html.em([], [element.text(post.description)])]),
          html.div([], post.contents),
        ]),
      ]),

      html.footer([], [
        html.p([], [
          element.text("Built with "),

          html.a([attribute.href("https://github.com/veeso/blogatto")], [
            element.text("Blogatto"),
          ]),
        ]),
      ]),
    ]),
  ])
}

pub fn configuration() -> markdown.MarkdownConfig(Nil) {
  markdown.default()
  |> markdown.markdown_path(blog_source_path)
  |> markdown.route_prefix(blog_route_prefix)
  |> markdown.syntax_highlighting(
    syntax_highlighting.ayu_dark_syntax_highlighting(),
  )
  |> markdown.template(blog_post_template)
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
