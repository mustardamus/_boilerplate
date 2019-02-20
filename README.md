# _boilerplate

Extendable boilerplate for JavaScript projects. Run `npx hygen` to see all the
generators. Corresponding files are located at `./_templates`.

Further documentation can be found in `./docs`.

## Commands

### `npm run lint:script`

Runs [ESLint](https://eslint.org) recursively on all `*.js` and `*.vue` files
in the current directory. It uses [Prettier](https://prettier.io) to format
code. On top of recommended ESLint rules, it uses the recommended rules of
these plugins:

- [eslint-plugin-prettier](https://github.com/prettier/eslint-plugin-prettier)
- [eslint-plugin-import](https://github.com/benmosher/eslint-plugin-import)
- [eslint-plugin-promise](https://github.com/xjamundx/eslint-plugin-promise)

Custom rules can be found in the file `./eslintrc.js`.

### `npm run lint:script:fix`

Will fix all auto-fixable problems found with the linter.

### `npm run lint`

Will run all linters together.

### `npm run upgrade`

Will provide an interactive way to update outdated dependencies via
[npm-check](https://github.com/dylang/npm-check). Exact versions are stored in
`package.json`.

<!-- inject:readme:commands -->

## Boilerplate injection points

### `inject:readme:commands`

To inject `npm run x` commands in the main `./README.md`.

### `inject:top-nav:entry`

To inject `<nuxt-link />` to pages in the top navigation bar at
`./src/components/the-top-nav.vue`.

## Boilerplate development

### `npm run reset-boilerplate`

Reverts boilerplate to original state.

## Notes

- disable whitespace package in atom to respect editorconfig
