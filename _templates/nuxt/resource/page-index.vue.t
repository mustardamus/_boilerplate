---
to: src/pages/<%= namePlural %>/index.vue
---
<%
  className = `page-${namePlural}-index`
-%>
<template>
  <page class="<%= className %>">
    <h3 class="title is-3">
      List
    </h3>

    <<%= namePlural %>-list
      :list="$store.state.<%= namePlural %>.list"
      @edit="onEditItem"
      @delete="onDeleteItem"
    />

    <template v-slot:sidebar-left>
      <div class="section">
        <h3 class="title is-3">
          Add
        </h3>

        <<%= namePlural %>-add-form @add="onAddItem" />
      </div>
    </template>

    <!--
    <template v-slot:sidebar-right>
      Sidebar Right
    </template>
    -->
  </page>
</template>

<script>
import Page from '../../components/page'
import <%= h.capitalize(namePlural) %>List from '../../components/<%= namePlural %>/list'
import <%= h.capitalize(namePlural) %>AddForm from '../../components/<%= namePlural %>/add-edit-form'

export default {
  name: '<%= className %>',

  components: { Page, <%= h.capitalize(namePlural) %>List, <%= h.capitalize(namePlural) %>AddForm },

  data() {
    return {}
  },

  computed: {},

  fetch({ store }) {
    return store.dispatch('<%= namePlural %>/loadList')
  },

  created() {},

  mounted() {
    this.$store.dispatch('<%= namePlural %>/loadList') // to load it from local storage
  },

  methods: {
    onAddItem(item) {
      this.$store.dispatch('<%= namePlural %>/add', item)
    },

    onEditItem(item) {
      this.$store.dispatch('<%= namePlural %>/edit', item)
    },

    onDeleteItem(item) {
      this.$store.dispatch('<%= namePlural %>/delete', item)
    }
  }
}
</script>

<style lang="scss" scoped>
.<%= className %> {
  width: auto;
}
</style><%= '\n' %>