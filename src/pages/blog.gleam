import blogatto/post.{type Post}
import gleam/list
import gleam/time/timestamp
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
      html.p([], [
        element.text(
          "Patrik seems to be lazy and has not made any posts yet...",
        ),
      ])

    sorted ->
      html.ul(
        [],
        list.map(sorted, fn(post) {
          html.li([], [
            html.a([attribute.href("/blog/" <> post.slug)], [
              element.text(post.title),
            ]),
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

      html.link([attribute.rel("stylesheet"), attribute.href("/css/styles.css")]),
    ]),

    html.body([], [
      html.main([], [
        html.h1([], [element.text("Patrik Dvořáček's Blog")]),

        posts,
      ]),
    ]),
  ])
}
