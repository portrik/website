import blogatto/post.{type Post}
import gleam/list
import gleam/time/timestamp
import lib/time
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn view(posts: List(Post(Nil))) -> Element(Nil) {
  let sorted =
    list.sort(posts, fn(left, right) {
      timestamp.compare(right.date, left.date)
    })

  let posts = case sorted {
    [] ->
      // This case will never be reached as Blogatto panics during the build when the post list is empty. But hey, keeping it here just in case.
      html.p([], [
        element.text(
          "Patrik seems to be lazy and has not made any posts yet...",
        ),
      ])

    sorted ->
      html.div(
        [attribute.id("blog-post-list")],
        list.map(sorted, fn(post) {
          html.div([], [
            html.span([attribute.class("blog-post-list-header")], [
              html.a([attribute.href("/blog/" <> post.slug)], [
                html.h2([], [element.text(post.title)]),
              ]),

              html.i([], [
                element.text(time.to_string(post.date)),
              ]),
            ]),

            html.p([], [element.text(post.description)]),
          ])
        }),
      )
  }

  html.html([attribute.lang("en")], [
    html.head([], [
      html.meta([attribute.charset("UTF-8")]),

      html.meta([
        attribute.name("viewport"),
        attribute.content("width=device-width, initial-scale=1"),
      ]),

      html.title([], "Patrik Dvořáček's Blog"),

      html.link([
        attribute.rel("stylesheet"),
        attribute.href("/css/normalize.css"),
      ]),
      html.link([attribute.rel("stylesheet"), attribute.href("/css/styles.css")]),
    ]),

    html.body([attribute.id("blog-body")], [
      html.main([], [
        html.h1([], [element.text("Patrik Dvořáček's Blog")]),

        posts,
      ]),
    ]),
  ])
}
