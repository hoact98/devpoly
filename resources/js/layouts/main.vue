<template>
  <div class="app">
      <Sidebar></Sidebar>
      <main>
        <Header></Header>
         <slot />
      <router-view/>
      <Footer></Footer>
      </main>
  </div>
</template>

<script>
import Sidebar from '../components/site/Sidebar.vue'
import Header from '../components/site/Header.vue'
import Footer from '../components/site/Footer.vue'
export default {
  name: 'MainLayout',
  components: {
   Sidebar,
   Header,
   Footer
  }
}
</script>
