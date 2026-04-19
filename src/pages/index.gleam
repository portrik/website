import blogatto/post.{type Post}
import configuration/markdown
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn view(_posts: List(Post(Nil))) -> Element(Nil) {
  html.html([attribute.lang("en")], [
    html.head([], [
      html.meta([attribute.charset("UTF-8")]),

      html.meta([
        attribute.name("viewport"),
        attribute.content("width=device-width, initial-scale=1"),
      ]),

      html.title([], "Patrik Dvořáček"),

      html.link([attribute.rel("stylesheet"), attribute.href("/css/styles.css")]),
    ]),

    html.body([attribute.id("index-body")], [
      html.main([], [
        html.h1([], [element.text("Patrik Dvořáček")]),

        html.span([], [
          html.p([], [
            element.text(
              "I like problem solving to help people, not corporations or LLMs. Coding is the best outlet for that. The simpler the better.",
            ),
          ]),

          html.p([], [
            element.text(
              "Aside from making computer go beep boop, I like to go out and touch grass. Or lift weights. Or play video games. Yes, I like to be stereotypical like that.",
            ),
          ]),
        ]),

        html.span([attribute.id("links")], [
          html.a([attribute.href("/" <> markdown.blog_route_prefix)], [
            element.text("Blog"),
          ]),
          html.a([attribute.href("mailto:patrik@dvoracek.dev")], [
            element.text("Email"),
          ]),
          html.a([attribute.href("https://github.com/portrik")], [
            element.text("GitHub"),
          ]),
          html.a([attribute.href("https://gitlab.com/portrik")], [
            element.text("Gitlab"),
          ]),
          html.a([attribute.href("https://mastodon.social/@portrik")], [
            element.text("Mastodon"),
          ]),
          html.a([attribute.href("https://metapixl.com/portrik")], [
            element.text("Pixelfed"),
          ]),
        ]),
      ]),
    ]),
  ])
}
