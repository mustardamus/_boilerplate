---
to: package.json
inject: true
after: scripts
skip_if: "strapi start"
---
    "dev": "NODE_ENV=development strapi start",
    "start": "NODE_ENV=production strapi start",
    "postinstall": "node node_modules/strapi/lib/utils/post-install.js && cd admin && npm run setup",