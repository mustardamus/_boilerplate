<template>
  <div
    :class="{
      page: true,
      'hide-sidebar-left': hideSidebarLeftOnMobile,
      'hide-sidebar-right': hideSidebarRightOnMobile
    }"
  >
    <nav v-if="$slots['sidebar-left']" class="sidebar-left">
      <slot name="sidebar-left" />
    </nav>

    <main>
      <slot />
    </main>

    <nav v-if="$slots['sidebar-right']" class="sidebar-right">
      <slot name="sidebar-right" />
    </nav>
  </div>
</template>

<script>
export default {
  name: 'page',

  props: {
    hideSidebarLeftOnMobile: {
      type: Boolean,
      default: false
    },

    hideSidebarRightOnMobile: {
      type: Boolean,
      default: false
    }
  }
}
</script>

<style lang="scss" scoped>
@include mobile {
  .page {
    flex-direction: column;
  }

  .hide-sidebar-left .sidebar-left {
    display: none;
  }

  .hide-sidebar-right .sidebar-right {
    display: none;
  }
}

@include tablet {
  .page {
    flex-direction: column;
  }

  .hide-sidebar-left .sidebar-left {
    display: none;
  }

  .hide-sidebar-right .sidebar-right {
    display: none;
  }
}

@include desktop {
  .page {
    flex: 1;
    flex-direction: row;
  }

  main {
    flex: 1;
  }

  nav {
    flex: 0 0 $sidebar-width;

    &.sidebar-left,
    &.sidebar-right {
      display: block !important;
    }
  }
}

.page {
  display: flex;
}

main {
  margin: 1.5rem;
}

nav {
  background: $sidebar-background;
}
</style>
