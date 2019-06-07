---
to: package.json
inject: true
after: scripts
skip_if: "sapper dev"
---
    "dev": "PORT=4444 sapper dev",
    "build": "sapper build --lagacy",
    "export": "sapper export --legacy",
    "start": "PORT=4444 node __sapper__/build/index.js",