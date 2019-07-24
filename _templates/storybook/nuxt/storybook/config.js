import Vue from 'vue'
import { configure } from '@storybook/vue'
import { action } from '@storybook/addon-actions'
import '../src/assets/scss/main.scss'

Vue.component('nuxt-link', {
  template: '<a href="#" @click.prevent="log()"><slot>NuxtLink</slot></a>',
  props: ['to'],
  methods: {
    log() {
      action('nuxt-link')(this.to)
    }
  }
})

function loadStories() {
  const req = require.context('../stories', true, /\.stories\.js$/)
  req.keys().forEach(filename => req(filename))
}

configure(loadStories, module)