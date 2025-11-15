import lustre/attribute.{type Attribute}
import lustre/element.{type Element}
import lustre/element/svg

/// Icon taken from https://github.com/brettkolodny/phosphor-lustre/blob/978d1fa5364639a66b9bbe7fed663d174b6725e5/phosphor_lustre/src/phosphor.gleam
/// Slight modifications were applied.
pub fn envelope(attrs: List(Attribute(msg))) -> Element(msg) {
  let attributes = [
    attribute.attribute("xmlns", "http://www.w3.org/2000/svg"),
    attribute.attribute("fill", "currentColor"),
    attribute.attribute("stroke", "currentColor"),
    attribute.attribute("stroke-linecap", "round"),
    attribute.attribute("viewBox", "0 0 256 256"),
    attribute.attribute("width", "1em"),
    attribute.attribute("height", "1em"),
    ..attrs
  ]

  svg.svg(attributes, [
    svg.path([
      attribute.attribute(
        "d",
        "M224,44H32A12,12,0,0,0,20,56V192a20,20,0,0,0,20,20H216a20,20,0,0,0,20-20V56A12,12,0,0,0,224,44Zm-96,83.72L62.85,68h130.3ZM92.79,128,44,172.72V83.28Zm17.76,16.28,9.34,8.57a12,12,0,0,0,16.22,0l9.34-8.57L193.15,188H62.85ZM163.21,128,212,83.28v89.44Z",
      ),
    ]),
  ])
}

/// Icon taken from https://github.com/brettkolodny/phosphor-lustre/blob/978d1fa5364639a66b9bbe7fed663d174b6725e5/phosphor_lustre/src/phosphor.gleam
/// Slight modifications were applied.
pub fn github_logo(attrs: List(Attribute(message))) -> Element(message) {
  let attributes = [
    attribute.attribute("xmlns", "http://www.w3.org/2000/svg"),
    attribute.attribute("fill", "currentColor"),
    attribute.attribute("stroke", "currentColor"),
    attribute.attribute("stroke-linecap", "round"),
    attribute.attribute("viewBox", "0 0 256 256"),
    attribute.attribute("width", "1em"),
    attribute.attribute("height", "1em"),
    ..attrs
  ]

  svg.svg(attributes, [
    svg.path([
      attribute.attribute(
        "d",
        "M216,104v8a56.06,56.06,0,0,1-48.44,55.47A39.8,39.8,0,0,1,176,192v40a8,8,0,0,1-8,8H104a8,8,0,0,1-8-8V216H72a40,40,0,0,1-40-40A24,24,0,0,0,8,152a8,8,0,0,1,0-16,40,40,0,0,1,40,40,24,24,0,0,0,24,24H96v-8a39.8,39.8,0,0,1,8.44-24.53A56.06,56.06,0,0,1,56,112v-8a58.14,58.14,0,0,1,7.69-28.32A59.78,59.78,0,0,1,69.07,28,8,8,0,0,1,76,24a59.75,59.75,0,0,1,48,24h24a59.75,59.75,0,0,1,48-24,8,8,0,0,1,6.93,4,59.74,59.74,0,0,1,5.37,47.68A58,58,0,0,1,216,104Z",
      ),
    ]),
  ])
}

/// Icon taken from https://github.com/brettkolodny/phosphor-lustre/blob/978d1fa5364639a66b9bbe7fed663d174b6725e5/phosphor_lustre/src/phosphor.gleam
/// Slight modifications were applied.
pub fn linkedin_logo(attrs: List(Attribute(msg))) -> Element(msg) {
  let attributes = [
    attribute.attribute("xmlns", "http://www.w3.org/2000/svg"),
    attribute.attribute("fill", "currentColor"),
    attribute.attribute("stroke", "currentColor"),
    attribute.attribute("stroke-linecap", "round"),
    attribute.attribute("viewBox", "0 0 256 256"),
    attribute.attribute("width", "1em"),
    attribute.attribute("height", "1em"),
    ..attrs
  ]

  svg.svg(attributes, [
    svg.path([
      attribute.attribute(
        "d",
        "M216,24H40A16,16,0,0,0,24,40V216a16,16,0,0,0,16,16H216a16,16,0,0,0,16-16V40A16,16,0,0,0,216,24ZM96,176a8,8,0,0,1-16,0V112a8,8,0,0,1,16,0ZM88,96a12,12,0,1,1,12-12A12,12,0,0,1,88,96Zm96,80a8,8,0,0,1-16,0V140a20,20,0,0,0-40,0v36a8,8,0,0,1-16,0V112a8,8,0,0,1,15.79-1.78A36,36,0,0,1,184,140Z",
      ),
    ]),
  ])
}
