---
to: rollup.config.js
unless_exists: true
---
import { writeFileSync } from 'fs'
import resolve from 'rollup-plugin-node-resolve'
import replace from 'rollup-plugin-replace'
import commonjs from 'rollup-plugin-commonjs'
import svelte from 'rollup-plugin-svelte'
import babel from 'rollup-plugin-babel'
import { terser } from 'rollup-plugin-terser'
import scss from 'rollup-plugin-scss'
import autoPreprocess from 'svelte-preprocess'
import config from 'sapper/config/rollup.js'
import Purgecss from 'purgecss'
import purgeSvelte from 'purgecss-from-svelte'
import pkg from './package.json'

const mode = process.env.NODE_ENV
const dev = mode === 'development'
const legacy = !!process.env.SAPPER_LEGACY_BUILD
const scssOptions = { includePaths: ['src/assets/scss', 'node_modules'] }
const cssBundlePath = 'static/global.css'
const saveCssBundle = css => writeFileSync(cssBundlePath, css, 'utf8')
const preprocess = autoPreprocess({ scss: scssOptions })
const env = {
  'process.env.NODE_ENV': JSON.stringify(mode)
}

export default {
  client: {
    input: config.client.input(),
    output: config.client.output(),
    plugins: [
      replace({ ...env, 'process.browser': true }),
      svelte({ dev, hydratable: true, preprocess }),
      resolve(),
      commonjs(),

      scss({
        ...scssOptions,
        indentedSyntax: true,
        outputStyle: dev ? 'nested' : 'compressed',
        output(css) {
          saveCssBundle(css)

          if (!dev) {
            const purgecss = new Purgecss({
              content: ['src/**/*.html', 'src/**/*.svelte'],
              css: [cssBundlePath],
              extractors: [
                {
                  extractor: purgeSvelte,
                  extensions: ['html', 'svelte']
                }
              ]
            })

            saveCssBundle(purgecss.purge()[0].css)
          }
        }
      }),

      legacy &&
        babel({
          extensions: ['.js', '.mjs', '.html', '.svelte'],
          runtimeHelpers: true,
          exclude: ['node_modules/@babel/**'],
          presets: [
            [
              '@babel/preset-env',
              {
                targets: '> 0.25%, not dead'
              }
            ]
          ],
          plugins: [
            '@babel/plugin-syntax-dynamic-import',
            [
              '@babel/plugin-transform-runtime',
              {
                useESModules: true
              }
            ]
          ]
        }),

      !dev && terser({ module: true })
    ]
  },

  server: {
    input: config.server.input(),
    output: config.server.output(),
    plugins: [
      replace({ ...env, 'process.browser': false }),
      svelte({ dev, generate: 'ssr', preprocess }),
      resolve(),
      commonjs()
    ],
    external: Object.keys(pkg.dependencies).concat(
      require('module').builtinModules ||
        Object.keys(process.binding('natives')) // eslint-disable-line
    )
  },

  serviceworker: {
    input: config.serviceworker.input(),
    output: config.serviceworker.output(),
    plugins: [
      replace({ ...env, 'process.browser': true }),
      resolve(),
      commonjs(),
      !dev && terser()
    ]
  }
}<%= '\n' %>