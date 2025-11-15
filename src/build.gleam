import base_page
import gleam/io
import lustre/ssg
import pages/index

const build_directory = "./dist"

pub fn main() {
  let build_result =
    ssg.new(build_directory)
    |> ssg.add_static_route(
      "/",
      base_page.base_page(index.view(), "Patrik Dvořáček"),
    )
    |> ssg.add_static_dir("./src/static")
    |> ssg.build

  case build_result {
    Ok(_) ->
      io.println("The project was built successfully into " <> build_directory)

    Error(error) -> {
      echo error

      io.println_error(
        "Could not build the project. See the error above for more information.",
      )
    }
  }
}
