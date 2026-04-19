import blogatto/dev
import blogatto/error
import dvoracekdev
import gleam/io

const server_port = 3000

pub fn main() {
  let development_configuration =
    dvoracekdev.configuration()
    |> dev.new()
    |> dev.build_command("gleam run -m dvoracekdev")
    |> dev.port(server_port)
    |> dev.start()

  case development_configuration {
    Ok(Nil) -> io.println("Dev server stopped.")
    Error(server_error) ->
      io.println_error(
        "Dev server error: " <> error.describe_error(server_error),
      )
  }
}
