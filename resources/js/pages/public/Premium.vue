<template>
  <section class="content">
    <div class="container">
      <div class="step-list">
        <div class="row">
          <div class="col-md-12">
            <h1>Premium</h1>
          </div>
        </div>

        <div class="row content-list">
          <div v-for="upgrade in upgrades" :key="upgrade.id" class="col-md-6 col-xs-12 col-lg-6 col-xl-4">
            <div class="content-item">
              <div class="content-item-title">
                <h3>{{upgrade.name}}</h3>
                <h2>{{upgrade.price}} VNĐ</h2>
              </div>
              <div class="content-item-des">
                <p>{{upgrade.description}}</p>
              </div>
              <div>
                <router-link :to="{name:'payment',params: { upgrade_id: upgrade.id }}" ><button type="button" class="btn btn-success">Mua ngay</button></router-link>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
  </section>
</template>
<script>

import { mapGetters } from "vuex";
export default {
 
  computed: mapGetters({
    upgrades: "upgrade/all",
  }),
  created() {
    this.$store.dispatch("upgrade/all");
  },
  methods: {},
};
</script>

<style lang="scss">
@import "../../../sass/home.scss";
</style>
