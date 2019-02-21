---
to: .babelrc
unless_exists: true
---
{
  "env": {
    "test": {
      "presets": [
        [
          "@babel/preset-env",
          {
            "targets": {
              "node": "current"
            }
          }
        ],
        "@nuxt/babel-preset-app"
      ]
    }
  }
}<%= '\n' %>