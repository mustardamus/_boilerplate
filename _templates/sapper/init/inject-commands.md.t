---
to: docs/npm-commands.md
inject: true
after: "inject:readme:commands"
skip_if: "npm run dev"
---
### `npm run dev`

Start the [Sapper](https://sapper.svelte.dev/docs) development server on
[localhost:4444](http://localhost:4444). Also watches the global stylesheet at
`./src/assets/scss/global.scss` for changes and recompiles it.

### `npm run build`

Builds the Sapper application for production. Also builds the global stylesheet
and minifies it with PurgeCSS.

### `npm start`

Starts the Sapper production server. Note that you have to run `npm run build`
before that.

### `npm run export`

This will generate a static standalone site for production. Also builds the
global stylesheet and minifies it with PurgeCSS.<%= '\n' %>