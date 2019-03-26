---
to: src/components/<% if(locals.subfolder) { %><%= subfolder + '/' %><% } %><%= name %>.vue
---
<%
  className = locals.subfolder ? `${locals.subfolder}-${name}` : name
-%>
<template>
  <div class="<%= className %>">
    <form @submit.prevent="onSubmit">
      <div class="field">
        <label class="label" for="value">
          Value
        </label>

        <div class="control">
          <input
            id="value"
            v-model="value"
            type="text"
            :class="{ input: true, 'is-danger': errors.value }"
          />

          <p v-if="errors.value" class="help is-danger">
            {{ errors.value }}
          </p>
        </div>
      </div>

      <div class="field">
        <div class="control">
          <button type="submit" class="button is-primary">
            Save
          </button>
        </div>
      </div>
    </form>
  </div>
</template>

<script>
import Vue from 'vue'

export default {
  name: '<%= className %>',

  components: {},

  props: {},

  data() {
    return {
      value: '',
      errors: {
        value: null
      }
    }
  },

  computed: {},

  created() {},

  mounted() {},

  methods: {
    isValidated() {
      let isValid = true

      if (this.value.length === 0) {
        this.errors.value = 'Can not be blank'
        isValid = false
      } else {
        this.errors.value = null
      }

      return isValid
    },

    focusInput(selector = 'input:first-child') {
      Vue.nextTick(() => {
        this.$el.querySelector(selector).focus()
      })
    },

    clearInputs() {
      this.value = ''
    },

    onSubmit() {
      if (this.isValidated()) {
        this.$emit('data', {
          value: this.value
        })

        this.clearInputs()
      } else {
        this.focusInput('input.is-danger:first-child')
      }
    }
  }
}
</script>

<style lang="scss" scoped>
.<%= className %> {
  width: auto;
}
</style><%= '\n' %>