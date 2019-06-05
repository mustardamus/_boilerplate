---
to: src/components/<% if(locals.subfolder) { %><%= subfolder + '/' %><% } %><%= name %>.svelte
---
<%
  className = locals.subfolder ? `${locals.subfolder}-${name}` : name
-%>
<div class="<%= className %>">
  {componentName}
</div>

<script>
  export let componentName = '<%= className %>'
</script>

<style>
  .<%= className %> {
    width: auto;
  }
</style><%= '\n' %>