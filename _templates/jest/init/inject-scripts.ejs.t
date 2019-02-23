---
to: package.json
inject: true
after: scripts
skip_if: "jest --watch"
---
    "test": "jest",
    "test:watch": "jest --watch",
    "test:coverage": "jest --coverage",