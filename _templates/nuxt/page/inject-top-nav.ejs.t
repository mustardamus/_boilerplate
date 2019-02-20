---
to: src/components/the-top-nav.vue
inject: true
after: "inject:top-nav:entry"
skip_if: <%= 'to="/' + name %>
---
        <nuxt-link to="/<% if(locals.subfolder) { %><%= subfolder + '/' %><% } %><%= name %>" class="navbar-item">
          <%= name %>
        </nuxt-link><%= '\n' %>