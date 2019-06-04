---
to: package.json
inject: true
after: scripts
skip_if: "sapper dev"
---
    "sapper:dev": "PORT=4444 sapper dev",
    "sapper:build": "sapper build --lagacy",
    "sapper:export": "sapper export --legacy",
    "sass:dev:build": "node-sass --source-map-embed src/assets/scss/global.scss static/global.css",
    "sass:dev:watch": "node-sass --source-map-embed --watch --recursive src/assets/scss/global.scss static/global.css",
    "sass:dev": "run-s sass:dev:build sass:dev:watch",
    "sass:build:build": "node-sass --output-style=compressed src/assets/scss/global.scss static/global.css",
    "sass:build:minify": "purgecss --config purgecss.config.js --out static",
    "sass:build": "run-s sass:build:build sass:build:minify",
    "dev": "run-p sass:dev sapper:dev",
    "build": "run-s sass:build sapper:build",
    "export": "run-s sass:build sapper:export",
    "start": "PORT=4444 node __sapper__/build/index.js",