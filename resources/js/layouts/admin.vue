<template>
  <div class="page-wrapper">
      <navbar :user=data></navbar>
      <sidebar :user=data></sidebar>
      <slot />
        
  </div>
</template>

<script>
import { mapGetters } from 'vuex'
import Navbar from '../components/Navbar.vue'
import Sidebar from '../components/Sidebar.vue'
export default {
  name: 'AdminLayout',
  computed: mapGetters({
    data: 'auth/user'
  }),
   created () {
      this.$store.dispatch('auth/fetchUser');
   },
   
  components: {
    Navbar,
    Sidebar
  }
}

</script>
