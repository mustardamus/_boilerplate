<nav id="the-top-nav" class="navbar is-unselectable">
  <div class="navbar-brand">
    <a href="/" class="navbar-item">
      Shiny Project
    </a>

    <a
      href="/"
      class="navbar-burger"
      class:is-active={isMobileShown}
      on:click|preventDefault={onBurgerClick}
    >
      <span />
      <span />
      <span />
    </a>
  </div>

  <div
    class="navbar-menu"
    class:is-active={isMobileShown}
    on:click={onBurgerClick}
  ><!-- on:click = closes menu on route change -->
    <div class="navbar-start">
      <a href="/" class="navbar-item">
        Home
      </a>

      <a href="/about" class="navbar-item">
        About
      </a>

      <!-- inject:top-nav:entry -->
    </div>

    <div class="navbar-end">
      <a href="/" class="navbar-item">
        What Else
      </a>
    </div>
  </div>
</nav>

<script>
  let isMobileShown = false

  function onBurgerClick() {
    isMobileShown = !isMobileShown
  }
</script>

<style>/* styles defined in assets/scss/the-top-nav.scss */</style>
