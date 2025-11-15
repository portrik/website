import lustre/attribute.{attribute as custom_attribute}
import lustre/element.{type Element}
import lustre/element/html.{html}

pub fn base_page(
  content: List(Element(message)),
  title: String,
) -> Element(message) {
  html([attribute.lang("en")], [
    html.head([], [
      html.title([], title),
      html.meta([attribute.charset("utf-8")]),
      html.meta([
        attribute.name("viewport"),
        attribute.content("width=device-width, initial-scale=1"),
      ]),
      html.meta([
        custom_attribute(
          "description",
          "The personal website of Patrik Dvořáček.",
        ),
      ]),
      html.link([
        attribute.rel("stylesheet"),
        attribute.href("./normalize.css"),
      ]),
      html.link([
        attribute.rel("stylesheet"),
        attribute.href("./styles.css"),
      ]),
    ]),

    html.body([], [html.main([], content)]),
  ])
}
