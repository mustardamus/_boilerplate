---
to: README.md
inject: true
after: "inject:readme:commands"
skip_if: "npm run dev"
---
### `npm run dev`

Start the [Nuxt](https://nuxtjs.org/guide) development server on
[localhost:3000](http://localhost:3000).

### `npm run build`

Builds the Nuxt application for production.

### `npm start`

Starts the Nuxt production server. Note that you have to run `npm run build`
before that.

### `npm run generate`

This will generate a static standalone site for production.<%= '\n' %>