---
to: src/routes/<% if(locals.subfolder) { %><%= subfolder + '/' %><% } %><%= name %>.svelte
---
<%
  className = `page-${name}`
-%>
<Page>
  {pageName}
</Page>

<script>
  import Page from '../<% if(locals.subfolder) { %><%= '../' %><% } %>components/page.svelte'

  const pageName = '<%= className %>'
</script>

<style></style><%= '\n' %>