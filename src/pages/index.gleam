import components.{Email, Github, LinkedIn}
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn view() -> List(Element(message)) {
  [
    components.title("Hello There", []),
    components.section(
      [
        html.p([], [
          html.text(
            "My name is Patrik Dvořáček. I like to do cool stuff with computers. The more strictly typed, explicitly coded, and well-defined these things are, the better. I am a big fan of ",
          ),
          components.link("Gleam", href: "https://gleam.run/"),
          html.text(", "),
          components.link(text: "Zed", href: "https://zed.dev/"),
          html.text(", and "),
          components.link(text: "TigerBeetle", href: "https://tigerbeetle.com/"),
          html.text(", for example. Especially the "),
          components.link(
            text: "TigerStyle code guide",
            href: "https://github.com/tigerbeetle/tigerbeetle/blob/2830f94b0b3bf9f8ca3a7ab0af35e255d214c11a/docs/TIGER_STYLE.md",
          ),
          html.text(" that I try to follow in higher-level languages."),
        ]),
        html.p([], [
          html.text("And I do not like working with LLM-generated content. "),
          components.bold("Yuck."),
        ]),
      ],
      [],
    ),
    components.section(
      [
        components.link_with_icon(
          text: "Email",
          href: "mailto:patrik@dvoracek.dev",
          icon: Email,
        ),
        components.link_with_icon(
          text: "Github",
          href: "https://github.com/portrik/",
          icon: Github,
        ),
        components.link_with_icon(
          "LinkedIn",
          href: "https://www.linkedin.com/in/patrikdvoracek/",
          icon: LinkedIn,
        ),
      ],
      [attribute.id("links")],
    ),
  ]
}
