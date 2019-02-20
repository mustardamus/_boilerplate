---
to: docs/npm-commands.md
inject: true
after: "inject:readme:commands"
skip_if: "npm run lint:style"
---
### `npm run lint:style`

Lints all `.css`, `.scss` and `.vue` files recursively in the `src` folder with
[StyleLint](https://stylelint.io/user-guide/).

Custom rules can be found in `.stylelintrc.js`.

### `npm run lint:style:fix`

Attempts to auto-fix found linting problems.