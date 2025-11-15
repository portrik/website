# [dvoracek.dev](https://dvoracek.dev)

This repository contains the source code for my personal website from start to finish. The deployment is a bog standard upload to FTP, nothing fancy.

No LLMs or any other kind of AI were used to make this project :)

## Running the Project Locally

The source code is written in [Gleam](https://gleam.run/) - hence it has to be installed in order to download the dependencies and build the project:

```fish
gleam deps download
```

Once all the dependencies are in place, the static HTML build can be obtained by running

```fish
gleam run -m build
```

This runs the code inside the [build file](./src/build.gleam). Once the build succeeds, the built project can be found in the [dist](./dist) directory.
