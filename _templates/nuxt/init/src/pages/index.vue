<template>
  <page class="page-index">
    <h1 class="title is-1">
      Lets get started :)
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
import Page from '../components/page'

export default {
  name: 'page-index',

  components: { Page }
}
</script>

<style lang="scss" scoped>
.page-index {
  width: auto;
}
</style>
