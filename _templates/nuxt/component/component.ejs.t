---
to: src/components/<% if(locals.subfolder) { %><%= subfolder + '/' %><% } %><%= name %>.vue
---
<template>
  <div class="<%= name %>">
    <%= name %>
  </div>
</template>

<script>
export default {
  name: '<%= name %>',

  components: {},

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
.<%= name %> {
  width: auto;
}
</style>