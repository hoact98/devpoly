<template>
  <section class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1>Solutions</h1>
        </div>
      </div>

      <div class="row content-list">
        <div class="col-md-6 col-xs-12 col-lg-6 col-xl-4">
          {{ solutions.data }}
          <div class="content-item" v-for="solution in solutions.data" :key="solution.id">
            <router-link
              :to="{ name: 'showDetailSolution', params: { id: solution.id } }"
              style="color: #fff; text-decoration: none"
            >
              <div class="solution-author">
                <div class="author-avatar">
                  <img :src="'/' + solution.users.avatar" alt="" />
                </div>
                <span class="author-nickname" style="color: black">
                  {{ solution.users.username }}
                </span>
              </div>
              <div class="solution-title">
                <h3 style="color: black">{{ solution.title }}</h3>
              </div>
              <div class="solution-help">
                <p class="help-message" style="color: black">
                  I would love to hear your feedback
                </p>
                <span>No one reviewed this solution. Be the first one</span>
              </div>

              <div class="solution-challenge">
                <div class="row">
                  <div class="col-5">
                    <div class="challenge-name">
                      <p style="color: black">{{ solution.challenges.title }}</p>
                    </div>

                    <div class="challenge-level">
                      <span style="color: black">{{ solution.challenges.level }}</span>
                    </div>
                  </div>
                  <div class="col-7">
                    <div class="challenge-img">
                      <img :src="'/' + solution.challenges.challenge_image" alt="" />
                    </div>
                  </div>
                </div>
              </div>

              <div class="solution-action">
                <div class="upvote button-block">
                  <div class="icon">
                    <svg
                      class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"
                      focusable="false"
                      viewBox="0 0 24 24"
                      aria-hidden="true"
                    >
                      <path
                        d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"
                      ></path>
                    </svg>
                  </div>
                  <span>upvote</span>
                </div>

                <div class="feedback button-block">
                  <div class="icon">
                    <svg
                      class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"
                      focusable="false"
                      viewBox="0 0 24 24"
                      aria-hidden="true"
                    >
                      <path
                        d="M22 4c0-1.1-.9-2-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h14l4 4V4z"
                      ></path>
                    </svg>
                  </div>
                  <span>feedback</span>
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
    return {};
  },
  computed: {
    solutions() {
      return this.$store.state.solution.solutions;
    },
  },
  created: function () {
    this.$store.dispatch("solution/fetch");
  },
};
</script>

<style lang="scss">
@import "../../../sass/solution.scss";
</style>
