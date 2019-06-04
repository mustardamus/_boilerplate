---
to: src/components/<%= namePlural %>/item.vue
---
<%
  className = `${namePlural}-item`
-%>
<template>
  <div class="<%= className %>">
    <div class="card">
      <header class="card-header">
        <p class="card-header-title">
          Item
        </p>
      </header>

      <div class="card-content">
        <div class="content">
          <template v-if="!isEditFormShown">
            {{ item }}
          </template>

          <edit-form v-if="isEditFormShown" :item="item" @edit="onEdit" />
        </div>
      </div>

      <footer class="card-footer">
        <nuxt-link :to="'/<%= namePlural %>/' + item.id" class="card-footer-item">
          Show
        </nuxt-link>

        <a class="card-footer-item" @click="onEditClick">
          <template v-if="isEditFormShown">
            Abort
          </template>

          Edit
        </a>

        <a class="card-footer-item" @click="onDeleteClick">
          Delete
        </a>
      </footer>
    </div>
  </div>
</template>

<script>
import EditForm from './add-edit-form'

export default {
  name: '<%= className %>',

  components: { EditForm },

  props: {
    item: {
      type: Object,
      required: true,
      default: () => {}
    }
  },

  data() {
    return {
      isEditFormShown: false
    }
  },

  computed: {},

  created() {},

  mounted() {},

  methods: {
    onEditClick() {
      this.isEditFormShown = !this.isEditFormShown
    },

    onEdit(item) {
      this.isEditFormShown = false

      this.$emit('edit', item)
    },

    onDeleteClick() {
      this.$emit('delete', this.item)
    }
  }
}
</script>

<style lang="scss" scoped>
.<%= className %> {
}
</style><%= '\n' %>