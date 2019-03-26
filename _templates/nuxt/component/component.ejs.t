---
to: src/components/<% if(locals.subfolder) { %><%= subfolder + '/' %><% } %><%= name %>.vue
---
<%
  className = locals.subfolder ? `${locals.subfolder}-${name}` : name
-%>
<template>
  <div class="<%= className %>">
    <%= className %>
  </div>
</template>

<script>
export default {
  name: '<%= className %>',

  components: {},

  props: {},

  data() {
    return {}
  },

  computed: {},

  created() {},

  mounted() {},

  methods: {}
}
</script>

<style lang="scss" scoped>
.<%= className %> {
  width: auto;
}
</style><%= '\n' %>