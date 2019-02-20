---
to: src/pages/<% if(locals.subfolder) { %><%= subfolder + '/' %><% } %><%= name %>.vue
---
<%
  className = `page-${name}`
-%>
<template>
  <page class="<%= className %>">
    <h1 class="title is-1">
      <%= name %>
    </h1>

    <!--
    <template v-slot:sidebar-left>
      Sidebar Left
    </template>

    <template v-slot:sidebar-right>
      Sidebar Right
    </template>
    -->
  </page>
</template>

<script>
import Page from '../<% if(locals.subfolder) { %><%= '../' %><% } %>components/page'

export default {
  name: '<%= className %>',

  components: { Page },

  data() {
    return {}
  },

  computed: {},

  fetch() {},

  created() {},

  mounted() {},

  methods: {}
}
</script>

<style lang="scss" scoped>
.<%= className %> {}
</style>