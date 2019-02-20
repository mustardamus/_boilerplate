## Commands

### `npm run lint:script`

Runs [ESLint](https://eslint.org) recursively on all `*.js` and `*.vue` files
in the current directory. It uses [Prettier](https://prettier.io) to format
code. On top of recommended ESLint rules, it uses the recommended rules of
these plugins:

- [eslint-plugin-prettier](https://github.com/prettier/eslint-plugin-prettier)
- [eslint-plugin-import](https://github.com/benmosher/eslint-plugin-import)
- [eslint-plugin-promise](https://github.com/xjamundx/eslint-plugin-promise)

Custom rules can be found in the file `eslintrc.js`.

### `npm run lint:script:fix`

Will fix all auto-fixable problems found with the linter.

### `npm run lint`

Will run all linters together.

### `npm run upgrade`

Will provide an interactive way to update outdated dependencies via
[npm-check](https://github.com/dylang/npm-check). Exact versions are stored in
`package.json`.

<!-- inject:readme:commands -->
