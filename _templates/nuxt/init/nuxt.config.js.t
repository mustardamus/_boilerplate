---
to: nuxt.config.js
unless_exists: true
---
import PurgecssPlugin from 'purgecss-webpack-plugin'
import globby from 'globby'

export default {
  srcDir: 'src',

  modules: [
    '@nuxtjs/style-resources' // eslint-ignore-line
  ],

  css: ['assets/scss/main.scss'],

  styleResources: {
    scss: ['assets/scss/variables.scss', 'assets/scss/mixins.scss']
  },

  router: {
    linkActiveClass: 'is-active'
  },

  build: {
    extractCSS: true,

    extend(config, { isDev }) {
      if (!isDev) {
        const paths = globby.sync([
          'src/pages/**/*.vue',
          'src/layouts/**/*.vue',
          'src/components/**/*.vue'
        ])
        const purgecss = new PurgecssPlugin({
          paths,
          whitelist: ['html', 'body']
        })

        config.plugins.push(purgecss)
      }
    }
  }
}<%= '\n' %>