## Boilerplate injection points

### `inject:readme:commands`

To inject `npm run x` commands in the `docs/npm-commands.md` documentation.

### `inject:readme:docs-link`

To inject links to the dedicated documentation in the main `README.md`.

### `inject:top-nav:entry`

To inject `<nuxt-link />` to pages in the top navigation bar at
`src/components/the-top-nav.vue`.

### `inject:readme:testing`

To inject extra documentation for testing in `docs/testing.md`.

## Boilerplate development

Do a basic setup for a new project:

```
degit mustardamus/_boilerplate new-boilerplate-feature
cd new-boilerplate-feature
npm install
git init .
git add .
git commit -m "initial commit"
```

Then implement the new feature. Once you are happy with it, create the templates
for the new feature. Check the changed files with git.
