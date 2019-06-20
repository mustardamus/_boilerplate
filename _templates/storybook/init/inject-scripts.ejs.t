---
to: package.json
inject: true
after: scripts
skip_if: "storybook"
---
    "storybook": "start-storybook -p 5555 -s static",