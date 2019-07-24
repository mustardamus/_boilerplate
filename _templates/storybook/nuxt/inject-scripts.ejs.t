---
to: package.json
inject: true
after: scripts
skip_if: "storybook:dev"
---
    "storybook:dev": "start-storybook -p 5555 -s static --ci",
    "storybook:build": "build-storybook -s static -o dist-storybook",