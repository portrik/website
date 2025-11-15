import gleam/list
import icons
import lustre/attribute as html_attributes
import lustre/element.{type Element}
import lustre/element/html

pub fn title(
  text: String,
  additional_attributes: List(html_attributes.Attribute(message)),
) -> Element(message) {
  let attributes = [] |> list.append(additional_attributes)

  text |> element.text |> list.wrap |> html.h1(attributes, _)
}

pub fn heading(
  text: String,
  additional_attributes: List(html_attributes.Attribute(message)),
) -> Element(message) {
  let attributes = [] |> list.append(additional_attributes)

  text |> element.text |> list.wrap |> html.h2(attributes, _)
}

pub fn section(
  content: List(Element(message)),
  additional_attributes: List(html_attributes.Attribute(message)),
) -> Element(message) {
  let attributes = [] |> list.append(additional_attributes)

  content |> html.div(attributes, _)
}

pub fn divider() -> Element(message) {
  let attributes = []

  attributes |> html.hr
}

pub fn bold(text: String) -> Element(message) {
  let attributes = []

  text |> element.text |> list.wrap |> html.b(attributes, _)
}

pub type LinkIcon {
  Email
  Github
  LinkedIn
}

pub fn link(text text: String, href href: String) -> Element(message) {
  let attributes = [html_attributes.href(href)]

  text |> element.text |> list.wrap |> html.a(attributes, _)
}

pub fn link_with_icon(
  text text: String,
  href href: String,
  icon icon: LinkIcon,
) -> Element(message) {
  let attributes = [html_attributes.href(href)]
  let icon = case icon {
    Email -> icons.envelope([])
    Github -> icons.github_logo([])
    LinkedIn -> icons.linkedin_logo([])
  }

  [icon, text |> element.text] |> html.a(attributes, _)
}
