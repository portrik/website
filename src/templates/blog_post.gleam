import blogatto/post.{type Post}
import gleam/option
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn template(post: Post(Nil), _all_posts: List(Post(Nil))) -> Element(Nil) {
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
