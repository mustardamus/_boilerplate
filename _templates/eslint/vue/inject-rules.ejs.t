---
to: .eslintrc.js
inject: true
after: rules
skip_if: "'vue/html-closing-bracket-newline'"
---
    'vue/html-closing-bracket-newline': ['error', { multiline: 'always' }],
    'vue/html-closing-bracket-spacing': ['error', { selfClosingTag: 'always' }],
    'vue/prop-name-casing': ['error', 'camelCase'],
    'vue/name-property-casing': ['error', 'kebab-case'],
    'vue/html-self-closing': 'off', // clashes with prettier
    'vue/max-attributes-per-line': 'off', // clashes with prettier<%= '\n' %>