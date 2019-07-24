---
to: docs/npm-commands.md
inject: true
after: "inject:readme:commands"
skip_if: "npm run storybook:dev"
---
### `npm run storybook:dev`

Starts the [Storybook](https://storybook.js.org/) server on
[localhost:5555](http://localhost:5555).

### `npm run storybook:build`

Builds the static Storybook in `./dist-storybook`.