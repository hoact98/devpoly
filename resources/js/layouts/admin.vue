<template>
  <div class="page-wrapper">
      <navbar></navbar>
      <sidebar></sidebar>
      <slot />
        
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
