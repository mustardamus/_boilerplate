---
to: .storybook/config.js
unless_exists: true
---
import { configure } from '@storybook/svelte'

function loadStories() {
  const req = require.context('../stories', true, /\.stories\.js$/)
  req.keys().forEach(filename => req(filename))
}

configure(loadStories, module)<%= '\n' %>