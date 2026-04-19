import blogatto/config/markdown/code
import gleam/list
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html
import smalto/lustre as smalto_lustre

fn styled_span(styles: List(#(String, String))) -> fn(String) -> Element(msg) {
  fn(value) {
    html.span(
      list.map(styles, fn(s) {
        let #(k, v) = s
        attribute.style(k, v)
      }),
      [element.text(value)],
    )
  }
}

pub fn ayu_dark_syntax_highlighting() -> code.SyntaxHighlightingConfig(Nil) {
  code.default()
  |> code.smalto_config(
    smalto_lustre.default_config()
    |> smalto_lustre.keyword(styled_span([#("color", "#ff8f40")]))
    |> smalto_lustre.number(styled_span([#("color", "#d2a6ff")]))
    |> smalto_lustre.comment(styled_span([#("color", "#626d7a")]))
    |> smalto_lustre.function(styled_span([#("color", "#ffb454")]))
    |> smalto_lustre.operator(styled_span([#("color", "#f29668")]))
    |> smalto_lustre.punctuation(styled_span([#("color", "#efe7da")]))
    |> smalto_lustre.type_(styled_span([#("color", "#ffb454")]))
    |> smalto_lustre.module(styled_span([#("color", "#39bae6")]))
    |> smalto_lustre.variable(styled_span([#("color", "#f29668")]))
    |> smalto_lustre.constant(styled_span([#("color", "#d2a6ff")]))
    |> smalto_lustre.builtin(styled_span([#("color", "#aad94c")]))
    |> smalto_lustre.tag(styled_span([#("color", "#39bae6")]))
    |> smalto_lustre.attribute(styled_span([#("color", "#aad94c")]))
    |> smalto_lustre.selector(styled_span([#("color", "#aad94c")]))
    |> smalto_lustre.property(styled_span([#("color", "#d2a6ff")]))
    |> smalto_lustre.regex(styled_span([#("color", "#95e6cb")]))
    |> smalto_lustre.string(styled_span([#("color", "#aad94c")])),
  )
}
