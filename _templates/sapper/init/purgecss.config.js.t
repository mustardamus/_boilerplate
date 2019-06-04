---
to: purgecss.config.js
unless_exists: true
---
const purgeSvelte = require('purgecss-from-svelte') // eslint-disable-line

module.exports = {
  content: ['src/**/*.html', 'src/**/*.svelte'],
  css: ['static/global.css'],
  extractors: [
    {
      extractor: purgeSvelte,
      extensions: ['html', 'svelte']
    }
  ]
}<%= '\n' %>