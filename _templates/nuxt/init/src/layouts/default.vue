<template>
  <div class="wrapper">
    <header>
      <the-top-nav />
    </header>

    <nuxt />

    <footer>
      <the-footer />
    </footer>
  </div>
</template>

<script>
import TheTopNav from '../components/the-top-nav'
import TheFooter from '../components/the-footer'

export default {
  components: { TheTopNav, TheFooter }
}
</script>

<style lang="scss" scoped>
// https://philipwalton.github.io/solved-by-flexbox/demos/holy-grail/

.wrapper {
  display: flex;
  min-height: 100vh;
  flex-direction: column;
  position: relative;
}

footer {
  background: $footer-background;
}
</style>
