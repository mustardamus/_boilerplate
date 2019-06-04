module.exports = {
  parserOptions: {
    parser: 'babel-eslint',
    ecmaVersion: 2019,
    sourceType: 'module'
  },

  env: {
    browser: true,
    commonjs: true,
    es6: true,
    node: true,
    jest: true
  },

  plugins: [
    'prettier',
    'import',
    'promise'
  ],

  extends: [
    'eslint:recommended',
    'plugin:prettier/recommended',
    'plugin:import/errors',
    'plugin:import/warnings',
    'plugin:promise/recommended'
  ],

  rules: {
    'spaced-comment': ['error', 'always'],
    'no-else-return': ['error', { allowElseIf: false }],
    'no-multi-spaces': ['error', { ignoreEOLComments: false }],
    'no-multi-str': 'error',
    'no-undefined': 'error',
    'handle-callback-err': 'error',
    'no-path-concat': 'error',
    'no-var': 'error',
    'prefer-const': 'error',
    'prefer-template': 'error',
    'no-alert': 'error',
    'array-bracket-spacing': ['error', 'never'],
    'object-curly-spacing': ['error', 'always'],
    'curly': 'error',
    'padding-line-between-statements': [
      'error',
      { blankLine: 'always', prev: '*', next: 'return' },
      { blankLine: 'always', prev: ['const', 'let', 'var'], next: '*' },
      { blankLine: 'any', prev: ['const', 'let', 'var'], next: ['const', 'let', 'var'] },
      { blankLine: 'always', prev: ['import', 'cjs-import'], next: '*' },
      { blankLine: 'any', prev: ['import', 'cjs-import'], next: ['import', 'cjs-import'] },
      { blankLine: 'always', prev: '*', next: ['export', 'cjs-export'] },
      { blankLine: 'any', prev: ['export', 'cjs-export'], next: ['export', 'cjs-export'] },
      { blankLine: 'always', prev: '*', next: ['block', 'block-like', 'for', 'function', 'if', 'switch', 'while'] },
      { blankLine: 'always', prev: ['block', 'block-like', 'for', 'function', 'if', 'switch', 'while'], next: '*' }
    ],

    'prettier/prettier': ['error', { singleQuote: true, semi: false }],
  },

  settings: {
    'import/resolver': {
      node: {
        extensions: ['.js', '.vue', '.svelte']
      }
    }
  }
}
