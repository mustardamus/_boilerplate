---
to: src/components/the-top-nav.vue
inject: true
after: "inject:top-nav:entry"
skip_if: <%= 'to="/' + namePlural %>
---
        <nuxt-link to="/<%= namePlural %>" class="navbar-item">
          <%= h.capitalize(namePlural) %>
        </nuxt-link><%= '\n' %>