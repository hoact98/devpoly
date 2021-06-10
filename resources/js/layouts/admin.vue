<template>
  <div class="admin-layout">
      <navbar></navbar>
        <sidebar></sidebar>
      <slot />
        <router-view/>
  </div>
</template>

<script>
import Navbar from '../components/Navbar.vue'
import Sidebar from '../components/Sidebar.vue'
export default {
  name: 'AdminLayout',

  components: {
    Navbar,
    Sidebar
  }
}
</script>
