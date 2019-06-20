<div
  class="page"
  class:hide-sidebar-left={hideSidebarLeftOnMobile}
  class:hide-sidebar-right={hideSidebarRightOnMobile}
>
  <slot name="sidebar-left"></slot>

  <main>
    <slot />
  </main>

  <slot name="sidebar-right"></slot>
</div>

<script>
  export let hideSidebarLeftOnMobile = false
  export let hideSidebarRightOnMobile = false
</script>

<style>/* styles defined in assets/scss/page.scss */</style>
