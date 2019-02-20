---
to: .eslintrc.js
inject: true
after: rules
skip_if: "'node/no-unsupported-features/es-syntax'"
---
    'node/no-unsupported-features/es-syntax': ['error', { ignores: ['modules'] }],<%= '\n' %>