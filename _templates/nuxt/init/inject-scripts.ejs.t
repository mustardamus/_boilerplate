---
to: package.json
inject: true
after: scripts
skip_if: "nuxt dev"
---
    "dev": "nuxt dev",
    "build": "nuxt build",
    "generate": "nuxt generate",
    "start": "nuxt start",