<template>
  <div class="app">
      <SidebarMain></SidebarMain>
      <main>
        <HeaderMain></HeaderMain>
        <slot />
        <router-view/>
        <Social></Social>
        <Footer></Footer>
      </main>
  </div>
</template>

<script>

import SidebarMain from '../components/site/SidebarMain.vue'
import HeaderMain from '../components/site/HeaderMain.vue'
import Footer from '../components/site/Footer.vue'
import Social from '../components/site/Social.vue'
import { userProfile } from "../helpers/auth";
export default {
  name: 'MainLayout',

  components: {
    SidebarMain,
    HeaderMain,
    Footer,
    Social
  },
    created() {
    this.userProfile();
  },
   methods: {
    userProfile() {
      userProfile(this.form)
        .then((res) => {
            this.$store.commit("auth/USER_PROFILE", { res });
        })
        .catch((err) => {
        });
    },
  },
}
</script>
<style lang="scss">
@import "../../sass/overview.scss";
</style>
