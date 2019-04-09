---
to: src/pages/<%= namePlural %>/:id.vue
---
<%
  className = `page-${namePlural}-show`
-%>
<template>
  <page class="<%= className %>">
    <div v-if="!isEditFormShown" class="content">
      {{ item }}

      <a class="button is-primary" @click="onEditClick">
        Edit
      </a>
    </div>

    <<%= namePlural %>-edit-form v-if="isEditFormShown" :item="item" @edit="onEdit" />

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
import Page from '../../components/page'
import <%= h.capitalize(namePlural) %>EditForm from '../../components/<%= namePlural %>/add-edit-form'

export default {
  name: '<%= className %>',

  components: { Page, <%= h.capitalize(namePlural) %>EditForm },

  data() {
    return {
      isEditFormShown: false
    }
  },

  computed: {
    item() {
      return this.$store.state.<%= namePlural %>.show
    }
  },

  fetch({ store, params }) {
    return store.dispatch('<%= namePlural %>/load', params.id)
  },

  created() {},

  mounted() {},

  methods: {
    onEditClick() {
      this.isEditFormShown = true
    },

    onEdit(item) {
      this.isEditFormShown = false

      this.$store.dispatch('<%= namePlural %>/edit', item)
    }
  }
}
</script>

<style lang="scss" scoped>
.<%= className %> {
  width: auto;
}
</style><%= '\n' %>