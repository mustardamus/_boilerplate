---
to: package.json
inject: true
after: scripts
skip_if: "stylelint"
---
    "lint:style": "stylelint 'src/**/*.vue' 'src/**/*.scss' 'src/**/*.css'",
    "lint:style:fix": "stylelint 'src/**/*.vue' 'src/**/*.scss' 'src/**/*.css' --fix",