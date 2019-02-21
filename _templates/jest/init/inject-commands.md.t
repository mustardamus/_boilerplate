---
to: docs/npm-commands.md
inject: true
after: "inject:readme:commands"
skip_if: "npm run test"
---
### `npm run test`

Recursively runs all `*.test.js` files that are found once.

### `npm run test:watch`

Runs all tests continuesly based on git changes.

### `npm run test:coverage`

Prints the test coverage of the code and generates a report in `coverage`.