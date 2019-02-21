---
to: docs/testing.md
inject: true
after: "inject:readme:commands"
skip_if: "Vue Testing"
--
## Vue Testing

### Testing components

To test components, switch the jest environment to `jsdom`.

```
/**
 * @jest-environment jsdom
 */
```