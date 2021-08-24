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
          <div class="content-item" v-for="solution in solutions" :key="solution.id">
            <router-link
              :to="{ name: 'showDetailSolution', params: { id: solution.id } }"
              style="color: #fff; text-decoration: none"
            >
              <div class="solution-author">
                <div class="author-avatar">
                  <img src="images/avatar-1.png" alt="" />
                </div>
                <span class="author-nickname"> nameUser </span>
              </div>
              <div class="solution-title">
                <h3>{{ solution.title }}</h3>
              </div>
              <div class="solution-help">
                <p class="help-message">I would love to hear your feedback</p>
                <span>No one reviewed this solution. Be the first one</span>
              </div>
              <div class="solution-challenge">
                <div class="row">
                  <div class="col-5">
                    <div class="challenge-name">
                      <p>{{ solution.challenges.title }}</p>
                    </div>

                    <div class="challenge-level">
                      <span>{{ solution.challenges.level }}</span>
                    </div>
                  </div>
                  <div class="col-7">
                    <div class="challenge-img">
                      <img src="images/challenge-img-1.png" alt="" />
                    </div>
                  </div>
                </div>
              </div>
              <div class="solution-action">
                <div v-if="auth">
                  <div v-if="solution.upvote.length>0">
                      <div v-for="(upvote,index) in solution.upvote" :key="index">
                          <button v-if="upvote.user_id==auth.id" @click="upvoteSolution(solution.id)" type="button" class="upvote button-block-solution" style="width:100%; background: #1bb21b;">
                              <div class="icon">
                            <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                            </div>
                            <span v-if="solution.upvote" v-html="solution.upvote.length == 0 ? 'Thích':solution.upvote.length"></span>
                          </button>
                          <button v-else-if="upvote.user_id!=auth.id && solution.upvote.length==index+1" @click="upvoteSolution(solution.id)" type="button" class="upvote button-block-solution" style="width:100%;">
                              <div class="icon">
                            <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                            </div>
                            <span v-if="solution.upvote" v-html="solution.upvote.length == 0 ? 'Thích':solution.upvote.length"></span>
                          </button>
                      </div>
                  </div>
                  <button v-else @click="upvoteSolution(solution.id)" type="button" class="upvote button-block-solution" style="width:100%;">
                      <div class="icon">
                    <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                    </div>
                    <span v-if="solution.upvote" v-html="solution.upvote.length == 0 ? 'Thích':solution.upvote.length"></span>
                  </button>
                </div>
                <div v-else class="button-block-solution">
                  <div class="icon">
                    <svg focusable="false" viewBox="0 0 24 24" aria-hidden="true" class="MuiSvgIcon-root MuiSvgIcon-fontSizeInherit"><path d="M8 6.82v10.36c0 .79.87 1.27 1.54.84l8.14-5.18c.62-.39.62-1.29 0-1.69L9.54 5.98C8.87 5.55 8 6.03 8 6.82z"></path></svg>
                  </div> 
                  <span v-if="solution.upvote">{{solution.upvote.length==0?'Thích':solution.upvote.length}}</span>
                </div>
                <router-link
              :to="{ name: 'showDetailSolution', params: { id: solution.id } }" style="width:48%; margin-left: 10px;"
            >
                 <div class="button-block-solution" style="width: 100%;">
                      <i class="ti-comment"></i>
                    <span class="pl-2" v-if="solution.feedbacks" v-html="solution.feedbacks.length"></span>
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

