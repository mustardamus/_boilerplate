# _boilerplate

Extendable boilerplate for JavaScript projects based on
[hygen](http://www.hygen.io/quick-start) templates.

## Documentation

- [NPM Commands](./docs/npm-commands.md): All available commands for the project
- [Boilerplate](./docs/boilerplate.md): Boilerplate development
<!-- inject:readme:docs-link -->

## Setup

The fastest way is to use the [degit](https://github.com/Rich-Harris/degit)
tool, `npm install degit -g` if you haven't already installed it.

```
degit mustardamus/_boilerplate my-funky-project
cd my-funky-project
npm install
npx hygen
```

## Templates

### ESLint

- `npx hygen eslint node`: Add linting for Node.js projects
- `npx hygen eslint vue`: Add linting for Vue.js projects
- `npx hygen eslint jest`: Add linting for Jest testing
- `npx hygen eslint all`: Add all of the above together
- `npx hygen eslint svelte`: Add linting for Svelte projects

### Stylelint

- `npx hygen stylelint init`: Add linting for stylesheets

### Nuxt

- `npx hygen nuxt init`: Initialize a good starting point for a Nuxt.js app
- `npx hygen nuxt page`: Add a page to an existing Nuxt.js app
- `npx hygen nuxt component`: Add a component to an existing Nuxt.js app
- `npx hygen nuxt form-component`: Add a form component to an existing Nuxt.js
  app
- `npx hygen nuxt store`: Add a store to the Nuxt.js app
- `npx hygen nuxt resource`: Creates components, pages and store for a resource
  to create/edit/show/delete a resource

### Sapper

- `npx hygen sapper init`: Initialize a good starting point for a Sapper app
- `npx hygen sapper page`: Add a page to an existing Sapper app
- `npx hygen sapper component`: Add a component to an existing Sapper app

### Jest

- `npx hygen jest init`: Initialize the Jest testing framework
- `npx hygen jest vue`: Extends Jest to be able to test Vue components
- `npx hygen jest test`: Creates a test file for either JS or Vue based on the
  source file extension

### Project

- `npx hygen project nuxt`: Runs `eslint all` + `stylelint init` + `jest init` +
  `jest vue` + `nuxt init`
- `npx hygen project sapper`: Runs `eslint node` + `eslint svelte` +
  `sapper init`

### Shipit

- `npx hygen shipit init`: Creates a shipitfile for server setup and deployment

### Storybook

- `npx hygen storybook init`: Initialize ths Storybook framework
- `npx hygen storybook svelte`: Create Storybook config file to use Svelte
