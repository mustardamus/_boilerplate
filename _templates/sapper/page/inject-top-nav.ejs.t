---
to: src/components/the-top-nav.svelte
inject: true
after: "inject:top-nav:entry"
skip_if: <%= name + '"' %>
---
      <a href="/<% if(locals.subfolder) { %><%= subfolder + '/' %><% } %><%= name %>" class="navbar-item">
        <%= h.capitalize(name) %>
      </a><%= '\n' %>