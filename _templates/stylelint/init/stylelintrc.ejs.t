---
to: .stylelintrc.js
unless_exists: true
---
module.exports = {
  extends: ['stylelint-config-standard', 'stylelint-config-sass-guidelines'],

  rules: {
    'selector-no-qualifying-type': null,
    'selector-max-id': 1,
    'selector-max-compound-selectors': 10,
    'max-nesting-depth': 10,
    'color-hex-case': null,
    'string-no-newline': null,
    'declaration-colon-newline-after': null,
    'function-parentheses-space-inside': null,
    'no-empty-source': null,

    'order/properties-alphabetical-order': null,
    'order/order': [
      'custom-properties',
      'dollar-variables',
      'declarations',
      'rules',
      'at-rules'
    ]
  }
}<%= '\n' %>