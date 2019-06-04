---
to: docs/sapper-app.md
unless_exists: true
---
# Sapper App

## Resources

- [Sapper](https://sapper.svelte.dev/docs): The main framework
- [Svelte](https://svelte.dev/docs): Framework behind the framework
- [Bulma](https://bulma.io/documentation/): The CSS framework
- [Sass](http://sass-lang.com/documentation/file.SASS_REFERENCE.html): Write easier CSS
- [Purgecss](https://www.purgecss.com/): Purge unused CSS for production stylesheet

## TODO

- describe how to extend client/server/worker
- describe the src/assets/scss/global.scss file
- create a page/nav component like in the nuxt app

## Set syntax highlighting in Atom, config.cson

```
core:
  customFileTypes:
    "text.html.basic": [
      "svelte"
    ]
```