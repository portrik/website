<h1 align="center">
    <a href="https://dvoracek.dev" alt="dvoracek.dev Website">dvoracek.dev</a>
</h1>

<div align="center">
    <img src="https://github.com/tehSIRius/website/actions/workflows/validate.yaml/badge.svg" alt="Build & Test Action Status" />
    <img src="https://github.com/tehSIRius/website/actions/workflows/deploy.yaml/badge.svg" alt="Production Deployment Status" />
    <a href="https://snyk.io/test/github/tehsirius/website" alt="Snyk Vulnerabilities Scan">
        <img src="https://snyk.io/test/github/tehSIRius/website/badge.svg" alt="Snyk Vulnerabilities Scan" />
    </a>
    <a href="https://codeclimate.com/github/tehSIRius/website/maintainability" alt="Code Climate Maintainability Score">
        <img src="https://api.codeclimate.com/v1/badges/e9f853fcd4f0a04634ec/maintainability" alt="Code Climate Maintainability Score" />
    </a>
</div>

---

Welcome to the repository for the source code of my personal website! This project is intended to be a showcase of my abilities to develop a website project with modern technologies and a complete CI/CD pipeline.

Additionally, the whole project can be exported into a neat A4 sized PDF as my CV.

## ⚙️ Technical Details

While the project is written in the latest iterations of [TypeScript](https://www.typescriptlang.org/) and [React](https://reactjs.org/), the whole code is bundled by [Vite](https://vitejs.dev/) into a static website.

The styling is done through [CSS Modules](https://github.com/css-modules/css-modules). However, this could be expanded into [styled-components](https://styled-components.com/) if I ever needed advanced theming.

The code quality is guarded by [ESlint](https://eslint.org/) in tandem with [Prettier](https://prettier.io/), [Rome](https://rome.tools/) and [stylelint](https://stylelint.io/).

The testing is done through [vitest](https://vitest.dev/).

Additionally, the project uses GitHub Workflows for [validation](.github/workflows/validate.yaml), [CodeQL](.github/workflows/codeql.yaml) and [deployment](.github/workflows/deploy.yaml).

### 🔨 Running Locally

The project requires

* [Node.js](https://nodejs.org/en/) v19 or newer
  * Although older versions may work, they just have not been tested
* [pnpm](https://pnpm.io/) package manager

The development version in watch mode with hot reloading can be started with

```bash
pnpm start
```

The preview with all of the optimizations and without hot reloading can be started with

```bash
pnpm preview
```

The linters can be started by running

```bash
pnpm lint
```

And, lastly, tests can be executed with

```bash
pnpm test
```
