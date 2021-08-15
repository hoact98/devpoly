<template>
  <section class="content">
    <div class="container">
      <div class="step-list">
        <div class="row">
          <div class="col-md-12">
            <h1>Welcome to DevChallenges</h1>
          </div>
        </div>

        <div class="row content-list">
          <div class="col-md-6 col-xs-12 col-lg-6 col-xl-4">
            <div class="content-item">
              <div class="content-item-image">
                <img src="svg/img-home-1.svg" alt="" />
              </div>
              <div class="content-item-title">
                <h3>Step 1: Chọn một thử thách</h3>
              </div>
              <div class="content-item-des">
                <p>
                 Chọn một thử thách, đọc kỹ mô tả. Đường dẫn giúp bạn điều hướng và bạn có thể kiếm được chứng chỉ sau khi hoàn thành tất cả các thử thách trong đường dẫn
                </p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-xs-12 col-lg-6 col-xl-4">
            <div class="content-item">
              <div class="content-item-image">
                <img src="svg/img-home-1.svg" alt="" />
              </div>
              <div class="content-item-title">
                <h3>Step 2: Làm việc một mình hoặc với một nhóm</h3>
              </div>
              <div class="content-item-des">
                <p>
                  Chọn một thử thách, đọc kỹ mô tả. Đường dẫn giúp bạn điều hướng và bạn có thể kiếm được chứng chỉ sau khi hoàn thành tất cả các thử thách trong đường dẫn
                </p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-xs-12 col-lg-6 col-xl-4">
            <div class="content-item">
              <div class="content-item-image">
                <img src="svg/img-home-1.svg" alt="" />
              </div>
              <div class="content-item-title">
                <h3>Step 3: Gửi các giải pháp của bạn và đưa ra phản hồi</h3>
              </div>
              <div class="content-item-des">
                <p>
                  Chọn một thử thách, đọc kỹ mô tả. Đường dẫn giúp bạn
                  điều hướng và bạn có thể kiếm được chứng chỉ sau khi hoàn thành tất cả các thử thách
                  trong con đường, bạn có thể kiếm được chứng chỉ sau khi hoàn thành tất cả các thử thách
                  trong con đường
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="challenge-path">
        <div class="row">
          <div class="col-md-12">
            <h1>Challenge Paths</h1>
          </div>
        </div>

        <div class="row content-list">
          <div
            v-for="challengecategory in challengecategories"
            :key="challengecategory.id"
            class="col-md-6 col-xs-12 col-lg-6 col-xl-4"
          >
            <router-link
              :to="{ name: 'overview', params: { slug: challengecategory.slug } }"
              style="text-decoration: none"
            >
              <div class="content-item">
                <div class="content-item-image img-challenge-path">
                  <img :src="'/' + challengecategory.image" alt="" />
                </div>
                <div class="content-item-title">
                  <h3>{{ challengecategory.name }}</h3>
                </div>
                <div class="content-item-des">
                  <p v-html="challengecategory.description"></p>
                </div>
              </div>
            </router-link>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
<script>

export default {
  data() {
    return {
      title: "Home",
    };
  },
  computed: {
    challengecategories() {
      return this.$store.state.challengecategory.challengecategories;
    },
    
  },
    created() {
      this.$store.dispatch("challengecategory/get_All_Data");
  },
  methods: {
  }
};
</script>

<style lang="scss">
@import "../../../sass/home.scss";
</style>
