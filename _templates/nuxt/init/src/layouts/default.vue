<template>
  <div class="wrapper">
    <header>
      <the-top-nav />
    </header>

    <nuxt id="content" />

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

@include tablet {
  header {
    position: fixed;
  }

  #content {
    margin-top: $header-top-margin-mobile;
  }
}

@include desktop {
  header {
    position: relative;
  }

  #content {
    margin-top: 0;
  }
}

.wrapper {
  display: flex;
  min-height: 100vh;
  flex-direction: column;
  position: relative;
}

header {
  width: 100%;
}

footer {
  background: $footer-background;
}
</style>
