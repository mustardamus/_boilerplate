<template>
  <nav class="navbar is-unselectable">
    <div class="navbar-brand">
      <nuxt-link to="/" class="navbar-item">
        Shiny Project
      </nuxt-link>

      <a
        :class="{ 'navbar-burger': true, 'is-active': isMobileShown }"
        @click="isMobileShown = !isMobileShown"
      >
        <span />
        <span />
        <span />
      </a>
    </div>

    <div :class="{ 'navbar-menu': true, 'is-active': isMobileShown }">
      <div class="navbar-start">
        <nuxt-link to="/" class="navbar-item">
          Home
        </nuxt-link>

        <!-- inject:top-nav:entry -->
      </div>

      <div class="navbar-end">
        <nuxt-link to="/" class="navbar-item">
          What Else
        </nuxt-link>
      </div>
    </div>
  </nav>
</template>

<script>
export default {
  name: 'the-top-nav',

  data() {
    return {
      isMobileShown: false
    }
  },

  watch: {
    $route() {
      this.isMobileShown = false
    }
  }
}
</script>

<style lang="scss" scoped>
@import '../assets/scss/variables';
@import '../assets/scss/mixins';

@include mobile {
  .navbar-brand .navbar-item {
    text-align: left;
    width: auto;
  }
}

@include tablet {
  .navbar-brand .navbar-item {
    text-align: left;
    width: auto;
  }
}

@include desktop {
  .navbar-brand .navbar-item {
    text-align: center;
    width: $sidebar-width;
    display: block;
    padding-top: 14px;
  }
}

.navbar {
  background: $topbar-background;
}
</style>
