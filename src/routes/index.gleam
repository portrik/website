import blogatto/post.{type Post}
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

    html.body([], [
      html.h1([], [element.text("Patrik Dvořáček")]),
    ]),
  ])
}
