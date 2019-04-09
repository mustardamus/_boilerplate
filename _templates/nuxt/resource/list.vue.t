---
to: src/components/<%= namePlural %>/list.vue
---
<%
  className = `${namePlural}-list`
-%>
<template>
  <div class="<%= className %> columns is-multiline">
    <item
      v-for="(item, i) in list"
      :key="i"
      :item="item"
      class="column is-4"
      @edit="onEdit"
      @delete="onDelete"
    />
  </div>
</template>

<script>
import Item from './item'

export default {
  name: '<%= className %>',

  components: { Item },

  props: {
    list: {
      type: Array,
      required: true,
      default: () => []
    }
  },

  data() {
    return {}
  },

  computed: {},

  created() {},

  mounted() {},

  methods: {
    onEdit(item) {
      this.$emit('edit', item)
    },

    onDelete(item) {
      this.$emit('delete', item)
    }
  }
}
</script>

<style lang="scss" scoped>
.<%= className %> {
}
</style><%= '\n' %>